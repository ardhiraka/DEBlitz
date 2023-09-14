import psycopg2 as db
import pandas as pd

conn_string="dbname='postgres' host='localhost' user='postgres' password='rinintha'"
conn=db.connect(conn_string)

df=pd.read_sql("select * from employee", conn)
print(df.head())
df.to_csv('employee_data.csv', index=False)

df_productive = df[
        (df['age'] < 55) &
        (df['salary'] > 5000)
    ]

df_productive = df_productive.sort_values(by=['salary'], ascending=False)
df_productive['name'] = df['name'].str.lower()
df_productive[['first_name','last_name']] = df_productive['name'].loc[df_productive['name'].str.split().str.len() == 2].str.split(expand=True)

print(df_productive.head())
df_productive.to_csv('productive_employee.csv', index=False)

cur=conn.cursor()
sql = '''
    CREATE TABLE IF NOT EXISTS productive_employee (
        employee_id INT,\
        name VARCHAR,age INT, salary INT, \
        bank VARCHAR, street VARCHAR, \
        city VARCHAR, state VARCHAR, \
        country VARCHAR, first_name VARCHAR, \
        last_name VARCHAR
    );
    '''
cur.execute(sql)
conn.commit()

df = pd.read_csv('productive_employee.csv')
for index, row in df.iterrows():
    insert_query = "INSERT INTO productive_employee (employee_id, name, age, salary, bank, street, city, state, country, first_name, last_name) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);"
    values = list(row)
    cur.execute(insert_query, values)

conn.commit()
conn.close()