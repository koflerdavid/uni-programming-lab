#!/bin/env python2
from py2neo import Graph, Path
import urllib
import urllib2
import time
import json
import sys

# Load database and perform query to obtain stadiums
graph = Graph()

if len(sys.argv) > 1 and sys.argv[1] == "force":
    teams = graph.cypher.execute("MATCH (n:Team) WHERE n.name IS NOT NULL RETURN n.slug, n.ground")
else:
    #teams = graph.cypher.execute("MATCH (n:Team) WHERE n.name IS NOT NULL AND (n.lng IS NULL OR n.lat IS NULL) RETURN n.name, n.ground, n.slug")
    teams = graph.cypher.execute("MATCH (n:Team) RETURN n.name, n.ground, n.slug")
print teams

# perform geocoding query for every stadium
for team in teams:
    print team[0]
    print team[1]
    
    query = "http://api.opencagedata.com/geocode/v1/geojson?query="
    if team[1]:
        query += urllib.quote_plus(team[1])
    elif team[0]:
        query += urllib.quote_plus(team[0])
    else:
        continue
    query += "&key=4dcb09ee02f88ed8b6d6575a702a3414&limit=1"
    print query
    result = str(urllib2.urlopen(query).read())
    result = result.replace("u\"","\"").replace("u\'","\'")
    
    # write to output
    #filename = team[0]
    #filename += ".geojson"
    #f = open(filename, 'w')
    #f.write(result)

    # extract coordinates (lat, lng) from file
    json_result = json.loads(result)

    if len(json_result['features']) == 0:
        if team[1]:
            query = "http://api.opencagedata.com/geocode/v1/geojson?query="
            query += urllib.quote_plus(team[0])
            query += "&key=4dcb09ee02f88ed8b6d6575a702a3414&limit=1"
            print query
            result = str(urllib2.urlopen(query).read())
            result = result.replace("u\"","\"").replace("u\'","\'")
            json_result = json.loads(result)
        if len(json_result['features']) == 0:
            continue

    print type(json_result['features'][0]['geometry']['coordinates'])
    print 'lng'
    print json_result['features'][0]['geometry']['coordinates'][0]
    print 'lat'
    print json_result['features'][0]['geometry']['coordinates'][1]

    # put into database
    cypher_query = "MATCH (n:Team { slug: {slug} }) SET n.lng = {lng}, n.lat = {lat} RETURN n"
    parameters = {'slug': team[2],
                  'lng': json_result['features'][0]['geometry']['coordinates'][0],
                  'lat': json_result['features'][0]['geometry']['coordinates'][1]}

    print cypher_query
    graph.cypher.execute(cypher_query, parameters)

    time.sleep(1.5)
