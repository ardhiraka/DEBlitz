import psycopg2 as db
import pandas as pd
conn_string="dbname='postgres' host='localhost' user='postgres' password='rinintha'"
conn=db.connect(conn_string)
df=pd.read_sql("select * from people", conn)
print(df.head())
print(df['city'].value_counts())
df.to_json(orient='records')
