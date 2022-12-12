from elasticsearch import Elasticsearch

es = Elasticsearch("http://localhost:9200") #or pi {127.0.0.1}

# Get all the documents
doc={"query":{"match_all":{}}}
res=es.search(index="users",size=10)
print(res['hits']['hits'][9]['_source'])

# Get Ronald Goodman
doc={"query":{"match":{"country":"Fiji"}}}
res=es.search(index="users",size=10)
print(res['hits']['hits'][0]['_source'])

# Get Ronald using Lucene syntax
res=es.search(index="users",q="country:Fiji",size=10)
print(res['hits']['hits'][0]['_source'])

# Get City Jamesberg - Returns Jamesberg and Lake Jamesberg
doc={"query":{"match":{"city":"Jamesberg"}}}
res=es.search(index="users",size=10)
print(res['hits']['hits'])

# Get Jamesberg and filter on zip so Lake Jamesberg is removed
doc={"query":{"bool":{"must":{"match":{"city":"Jamesberg"}},"filter":{"term":{"zip":"63792"}}}}}
res=es.search(index="users",size=10)
print(res['hits']['hits'])





