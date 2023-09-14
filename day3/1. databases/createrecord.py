import psycopg2 as db
conn_string="dbname='postgres' host='localhost' user='postgres' password='rinintha'"
conn=db.connect(conn_string)
cur=conn.cursor()
query = "insert into people (id,name,street,city,zip) values({},'{}','{}','{}','{}')".format(1,'Big Bird','Sesame Street','Fakeville','12345')
print(cur.mogrify(query))
query2 = "insert into people (id,name,street,city,zip) values(%s,%s,%s,%s,%s)"
data=(1,'Big Bird','Sesame Street','Fakeville','12345')
print(cur.mogrify(query2,data))
cur.execute(query2,data)
conn.commit()
