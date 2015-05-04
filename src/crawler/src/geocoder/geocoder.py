#!/bin/env python2
from py2neo import Graph, Path
import urllib
import urllib2
import time
import json

# Load database and perform query to obtain stadiums
graph = Graph()
teams = graph.cypher.execute("MATCH (n:Team) WHERE n.name IS NOT NULL RETURN n.name, n.ground")
print teams

# perform geocoding query for every stadium
for team in teams:
    print team[0]
    print team[1]
    query = "http://api.opencagedata.com/geocode/v1/geojson?query="
    query += urllib.quote_plus(team[1])
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
    print type(json_result['features'][0]['geometry']['coordinates'])
    print 'lng'
    print json_result['features'][0]['geometry']['coordinates'][0]
    print 'lat'
    print json_result['features'][0]['geometry']['coordinates'][1]

    # put into database
    cypher_query_lat = "MATCH (n { name: \'"
    cypher_query_lat += team[0]
    cypher_query_lat += "\' }) SET n.lat = "
    cypher_query_lat += json_result['features'][0]['geometry']['coordinates'][1]
    cypher_query_lat += " RETURN n"
    print cypher_query_lat
    resp_lat = graph.cypher.execute(cypher_query_lat)

    cypher_query_lng = "MATCH (n { name: \'"
    cypher_query_lng += team[0]
    cypher_query_lng += "\' }) SET n.lng = "
    cypher_query_lng += json_result['features'][0]['geometry']['coordinates'][0]
    cypher_query_lng += " RETURN n"
    print cypher_query_lng
    resp_lng = graph.cypher.execute(cypher_query_lng)
   
    
    time.sleep(5)
    
