library("SPARQL")
library("igraph")

endpoint = "http://dbpedia.org/sparql"

query = "PREFIX dbo: <http://dbpedia.org/ontology/>
PREFIX dbp: <http://dbpedia.org/property/>
PREFIX dbpedia: <http://dbpedia.org/resource/>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?name ?bandname WHERE {
?person foaf:name ?name .
?band dbo:bandMember ?person .
?band dbo:genre dbpedia:Jazz .
?band dbp:name ?bandname .

}
ORDER BY ?name"

qd= SPARQL(endpoint, query)
df = qd$results

