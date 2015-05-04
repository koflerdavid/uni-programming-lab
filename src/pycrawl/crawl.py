import sys
import urllib2
import urllib
import re
import json
import os.path
from collections import namedtuple
from bs4 import BeautifulSoup

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'
def success(string):
    print(bcolors.OKGREEN + string + bcolors.ENDC)
def warning(string):
    print(bcolors.FAIL + string + bcolors.ENDC)
class Object:
    def to_JSON(self):
        return json.dumps(self, default=lambda o: o.__dict__)
mapsapikey = 'AIzaSyBfurHB8WHdp78m7SbqR5mKqypSOUTvKuo'
Team = namedtuple('Team', ['name','id','details','players'])
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

    details = root.find(id='teamTabs-details')
    if details is None:
        warning("no details page "+str(teamid))
        return None
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

    team = Object()
    team.name = name
    team.id = teamid
    team.details = details
    team.players = players
    return team

class dummyf:
    def write(self,bla):
        pass
    def close(self):
        pass
    def __iter__(self):
        return self
    def next(self):
        raise StopIteration

def geocode(addr):
    utf = addr.encode('utf-8')
    addr = urllib.urlencode({'address':utf})
    response = urllib2.urlopen('http://maps.googleapis.com/maps/api/geocode/json?'+addr).read()
    tmp = json.loads(response)
    if ('results' in tmp):
        for result in tmp['results']:
            if ('address_components' in result and len(result['address_components'])>0):
                types = result['address_components'][0]['types']
                if 'locality' in types or 'point_of_interest' in types or 'establishment' in types:
                    loc = result['geometry']['location']
                    lat = loc['lat']
                    lng = loc['lng']
                    return [lat,lng]
    return None

def geocode2(addr):
    utf = addr.encode('utf-8')
    addr = urllib.urlencode({'query':utf,'key':mapsapikey})
    response = urllib2.urlopen('https://maps.googleapis.com/maps/api/place/textsearch/json?'+addr).read()
    tmp = json.loads(response)
    if ('results' in tmp):
        for result in tmp['results']:
            types = result['types']
            loc = result['geometry']['location']
            lat = loc['lat']
            lng = loc['lng']
            return [lat,lng]
    print(response)
    return None
def geocodeteams():
    locfile = open('locs.dat','r')
    teamsfile = open('teams.dat','r')
    maxreqs = 100
    newlocs = []
    for line in teamsfile:
        if(0==maxreqs):
            break
        line = line[:-1]
        loc = None
        locstr = locfile.readline()[:-1]
        if len(line) == 0:
            newlocs.append(None)
            continue
        elif len(locstr)>0:
            loc = json.loads(locstr)
            newlocs.append(loc)
            continue

        tmp = json.loads(line)['details']
        for addrtype in ['Address','Ground']:
            if addrtype in tmp:
                loc = geocode2(tmp[addrtype])
                if loc is not None:
                    break
        if loc is None:
            for addrtype in ['Address','Ground']:
                if addrtype in tmp:
                    warning('Cant find loc for: '+tmp[addrtype])
            newlocs.append(None)
        else:
            maxreqs-=1
            success('Found loc for: '+tmp[addrtype])
            newlocs.append(loc)

    teamsfile.close()
    locfile.close()

    locfile = open('locs.dat','w')
    for loc in newlocs:
        if loc is None:
            locfile.write('\n')
        else:
            locfile.write('['+str(loc[0])+','+str(loc[1])+']\n')
    locfile.close()

def findlocs():
    # load a list of entities which have a location
    response = urllib2.urlopen("https://wdq.wmflabs.org/api?q=CLAIM[31:476028]%20AND%20CLAIM[625]&props=625").read()
    jsonrepspone = json.loads(response)
    entitieswithloc = jsonrepspone['items']
    locs = jsonrepspone['props']['625']
    #print(entitieswithloc)
    foundlocs = []

    teamsfile = open('teams.dat','r')
    for i,line in enumerate(teamsfile):
        #if i>30:
            #break
        line = line[:-1]
        if len(line) != 0:
            teamname = json.loads(line)['name']
            query = urllib.urlencode({'action':'wbsearchentities','search':teamname,'language':'en','limit':'20','format':'json'})
            response = urllib2.urlopen('https://www.wikidata.org/w/api.php?'+query).read()
            results = json.loads(response)
            if results['success']!=1:
                warning('No success in fetching '+str(query))
                break
            results = results['search']
            for result in results:
                id = int(result['id'][1:])
                if id in entitieswithloc:
                    for loc in locs:
                        if loc[0]==id:
                            foundlocs.append(loc[2])
                            print('Found Location for '+str(teamname)+' '+str(loc))
                            continue
        foundlocs.append(None)
        print('No location found for '+str(teamname))
        #print(response)
        #print(results)
    teamsfile.close()
    locfile = open('locs.dat','w')
    numfoundlocs = 0
    for loc in foundlocs:
        if loc is None:
            locfile.write('\n')
        else:
            numfoundlocs+=1
            split = loc.split('|')
            locfile.write('['+str(split[0])+','+str(split[1])+']\n')
    locfile.close()
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
