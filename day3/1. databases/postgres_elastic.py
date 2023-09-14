import pandas as pd
import psycopg2 as db
from elasticsearch import Elasticsearch

conn_string="dbname='postgres' host='localhost' user='postgres' password='rinintha'"
conn=db.connect(conn_string)

df=pd.read_sql("select * from car_assignment", conn)
df.to_csv('postgresqldata.csv')
print("-------Data Saved------")

es = Elasticsearch() 
df=pd.read_csv('postgresqldata.csv')
for i,r in df.iterrows():
	doc=r.to_json()
	res=es.index(index="frompostgresql", doc_type="doc", body=doc)
	print(res)
