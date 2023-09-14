import psycopg2 as db
conn_string="dbname='postgres' host='localhost' user='postgres' password='rinintha'"
conn=db.connect(conn_string)
cur=conn.cursor()
query = "select * from people"
cur.execute(query)
print(cur.fetchone())
print(cur.rowcount)
print(cur.rownumber)
print(cur.fetchmany(3))
print(cur.rownumber)
f=open('fromdb.csv','w')
conn=db.connect(conn_string)
cur=conn.cursor()
cur.copy_to(f,'people',sep=',')
f.close()
f=open('fromdb.csv','r')
print(f.read())


