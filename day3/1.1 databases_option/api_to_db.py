import json
import urllib3
import psycopg2

conn = psycopg2.connect(database="postgres", user="postgres", password="rinintha", host="localhost")
cur = conn.cursor()

sql = '''
    CREATE TABLE IF NOT EXISTS api (
        userId INT,\
        id INT,\
        title VARCHAR, \
        body VARCHAR
    );
    '''

cur.execute(sql)
conn.commit()

http = urllib3.PoolManager()
url = "https://jsonplaceholder.typicode.com/posts"

try:
    response = http.request('GET', url)
    data = json.loads(response.data.decode('utf-8'))

    for i in data:
        userId = None
        id = None
        title = None
        body = None

        userId = i['userId']
        id = i['id']
        title = i['title']
        body = i['body']

        cur.execute("INSERT INTO api VALUES (%s, %s, %s, %s);", (userId, id, title, body))
        conn.commit()
    cur.close()
except IOError as io:
    print("ERROR!")