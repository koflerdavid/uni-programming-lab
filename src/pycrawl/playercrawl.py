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
headers = { 'User-Agent' : 'Mozilla/5.0' }
teamidregex = re.compile('(?<=/teams/team.sd\?team_id=)\d+')

def getPlayer(playerid):
    req = urllib2.Request('http://www.soccerbase.com/players/player.sd?player_id='+str(playerid), None, headers)
    try:
        page = urllib2.urlopen(req)
    except Exception, e:
        warning("timeout, idk "+str(playerid))
        return None
    html = BeautifulSoup(page)
    root = html.find(id='cpm')

    name = root.find('h1').stripped_strings.next()
    if 'Error' in name:
        warning("maybe 404'ed: "+str(playerid))
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

    teams = []
    career = root.find('table',{'class':'career'})
    if career is not None:
        for row in career.find_all('tr',{'class':'alt'}):
            link = row.find('a')
            team = Object()
            team.name = link.string
            pattern = teamidregex.search(link.get('href'))
            if pattern is not None:
                team.uid = int(pattern.group(0))
            else:
                warning('url doesnt match pattern: '+str(link.get('href')))

            team.details = []
            for column in row.find_all('td'):
                if column.string is not None:
                    team.details.append(column.string.strip())

            teams.append(team)
    #if len(teams)==0:
    #warning('No teams')

    player = Object()
    player.name = name
    player.id = playerid
    player.teams = teams
    return player

class dummyf:
    def write(self,bla):
        pass
    def close(self):
        pass
    def __iter__(self):
        return self
    def next(self):
        raise StopIteration

parsed = 1
if os.path.exists('players.dat'):
    f = open('players.dat','r+')
    for line in f:
        line = line[:-1]
        #print(line)
        parsed+=1
    f.close()
f = open('players.dat','a+')
#f = dummyf()
try:
    for i in range(parsed,70000):
        player = getPlayer(i)
        if player is None:
            f.write('\n')
            continue
        playerstr = player.to_JSON()
        f.write(playerstr+'\n')
        #playerstr = str(player)
        print('['+str(i)+'] '+playerstr)
    f.close()
except KeyboardInterrupt:
    f.close()
