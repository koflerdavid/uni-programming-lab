import urllib
import urllib2
import json

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

class dummyf:
    def write(self,bla):
        pass
    def close(self): pass
    def __iter__(self):
        return self
    def next(self):
        raise StopIteration

def getJSON(url,attrs):
    query = urllib.urlencode(attrs)
    response = urllib2.urlopen(url+'?'+query).read()
    return json.loads(response)
