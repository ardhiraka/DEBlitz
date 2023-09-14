import pandas as pd
import psycopg2 as db

conn_string="dbname='postgres' host='localhost' user='postgres' password='rinintha'"
conn=db.connect(conn_string)
cur=conn.cursor()

sql = '''
    CREATE TABLE IF NOT EXISTS employee (
        employee_id SERIAL PRIMARY KEY,\
        name VARCHAR,age INT, salary INT, \
        bank VARCHAR, street VARCHAR, \
        city VARCHAR, state VARCHAR, \
        country VARCHAR
    );
    '''

cur.execute(sql)
conn.commit()

df = pd.read_csv('data.csv')
for index, row in df.iterrows():
    insert_query = "INSERT INTO employee (name, age, salary, bank, street, city, state, country) VALUES (%s, %s, %s, %s, %s, %s, %s, %s);"
    values = list(row)
    cur.execute(insert_query, values)

conn.commit()
conn.close()