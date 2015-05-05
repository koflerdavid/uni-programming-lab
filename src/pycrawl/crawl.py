from utils import *
import sys
import urllib2
import re
import json
import os.path
from collections import namedtuple
from bs4 import BeautifulSoup

headers = { 'User-Agent' : 'Mozilla/5.0' }
playeridregex = re.compile('(?<=/players/player.sd\?player_id=)\d+')

def getTeam(teamid):
    req = urllib2.Request('http://www.soccerbase.com/teams/team.sd?team_id='+str(teamid), None, headers)
    try:
        page = urllib2.urlopen(req)
    except Exception, e:
        warning("timeout, idk "+str(teamid))
        return None
    html = BeautifulSoup(page)
    root = html.find(id='cpm')

    name = root.find('h1').stripped_strings.next()
    if 'Error' in name:
        warning("maybe 404'ed: "+str(teamid))
        return None
    team = Object()
    team.name = name
    team.id = teamid

    details = root.find(id='teamTabs-details')
    if details is None:
        warning("no details page "+str(teamid))
        return team

    details = {}
    lastAttr = None
    for clubinfo in root.find_all('table',{'class':'clubInfo'}):
        rownum = -1
        for row in clubinfo.find_all(['th','strong']):
            if row.parent.parent.parent != clubinfo and row.parent.parent.parent.parent != clubinfo:
                #print('SKIP: '+str(row))
                continue
            #else:
            #print(row)
            rownum+=1
            raw = row.string
            if raw is None or len(raw.strip())<=1:
                continue
            raw = raw.strip()
            if rownum%2==0:
                lastAttr = raw
                details[lastAttr] = u''
            elif lastAttr is not None:
                details[lastAttr] += raw+u' '
    #print(details)
    toRemove = []
    for key in details:
        if len(details[key])==0:
            toRemove.append(key)
    for key in toRemove:
        del details[key]

    players = []
    for link in root.find_all('a'):
        pattern = playeridregex.search(link.get('href'))
        if pattern is not None:
            playerid = pattern.group(0)
            player = Object()
            player.uid = int(playerid)
            player.name = link.string
            players.append(player)

    team.details = details
    team.players = players
    return team


wikidataurl = 'https://www.wikidata.org/w/api.php'
wikidataquery = 'https://wdq.wmflabs.org/api'

def locofvenue(venueid):
    results = getJSON(wikidataurl,{'action':'wbgetclaims','entity':'Q'+str(venueid),'format':'json','property':'P625'})
    if len(results['claims'])==0:
        warning('no claims')
        return None
    if len(results['claims']['P625'])>1:
        warning('multiple snaks')
        return None
    for snak in results['claims']['P625']:
        loc = snak['mainsnak']['datavalue']['value']
        return [loc['latitude'],loc['longitude']]
    return None


def findTeamLocation(teamwithvenue,teamwithlocation,teamname):
    entitieswithteamloc = teamwithlocation['items']
    teamlocs = teamwithlocation['props']['625']
    entitieswithvenue = teamwithvenue['items']
    venues = teamwithvenue['props']['115']
    results = getJSON(wikidataurl,{'action':'wbsearchentities','search':teamname,'language':'en','limit':'20','format':'json'})
    if results['success']!=1:
        raise IOError('success !=1') 
    results = results['search']
    for result in results:
        id = int(result['id'][1:])
        if id in entitieswithteamloc:
            for loc in teamlocs:
                if loc[0]==id:
                    split = loc[2].split('|')
                    return [float(split[0]),float(split[1])]
        if id in entitieswithvenue:
            for loc in venues:
                if loc[0]==id:
                    venueloc = locofvenue(loc[2])
                    if venueloc is not None:
                        return venueloc
    return None


def findlocs():
    # load a list of entities which have a location
    teamwithlocation = getJSON(wikidataquery,{'q':'CLAIM[31:476028] AND CLAIM[625]','props':'625'})
    teamwithvenue = getJSON(wikidataquery,{'q':'CLAIM[31:476028] AND NOCLAIM[625] AND CLAIM[115]','props':'115'})
    #print(entitieswithloc)
    foundlocs = []
    numfoundlocs = 0

    teamsfile = open('teams.dat','r')
    locfile = open('locs.dat','a+')
    parsedlocsnum = 0
    for line in locfile:
        if len(line)>1:
            numfoundlocs+=1
            tmp = json.loads(line)
        parsedlocsnum+=1
    for i,line in enumerate(teamsfile):
        if i<parsedlocsnum:
            continue
        line = line[:-1]
        if len(line) != 0:
            teamname = json.loads(line)['name']
            try:
                loc = findTeamLocation(teamwithvenue,teamwithlocation,teamname)
                if loc is not None:
                    success('['+str(i+1)+'] Found Location for '+str(teamname)+' '+str(loc))
                    numfoundlocs+=1
                    foundlocs.append(loc)
                    locfile.write(str(loc)+'\n')
                    continue
            except IOError, e:
                break
        foundlocs.append(None)
        locfile.write('\n')
        print('['+str(i+1)+'] No location found for '+str(teamname))
    locfile.close()
    teamsfile.close()
    success('Found '+str(numfoundlocs)+' addresses')

parsed = 1
hasloc = 0
if os.path.exists('teams.dat'):
    f = open('teams.dat','r+')
    for line in f:
        line = line[:-1]
        parsed+=1
        if len(line)==0:
            continue
        tmp = json.loads(line)['details']
        if 'Ground' in tmp or 'Address' in tmp:
            hasloc+=1
    f.close()
print(str(hasloc)+'/'+str(parsed-1)+' have an address')
f = open('teams.dat','a+')
#f = dummyf()
try:
    for i in range(parsed,7000):
        team = getTeam(i)
        if team is None:
            f.write('\n')
            continue
        teamstr = team.to_JSON()
        f.write(teamstr+'\n')
        print('['+str(i)+'] '+teamstr)
    f.close()
    findlocs()
    #geocodeteams()
except KeyboardInterrupt:
    f.close()
