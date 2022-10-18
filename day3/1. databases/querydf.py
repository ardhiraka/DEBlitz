import psycopg2 as db
import pandas as pd
conn_string="dbname='hacktiv8' host='localhost' user='postgres' password='rinintha'"
conn=db.connect(conn_string)
df=pd.read_sql("select * from users", conn)
print(df.head())
print(df['city'].value_counts())
