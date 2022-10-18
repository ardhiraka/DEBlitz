from elasticsearch import Elasticsearch
from elasticsearch import helpers
from faker import Faker

fake=Faker()
es = Elasticsearch() #or pi {127.0.0.1}

actions = [
  {
    "_index": "users",
    "_type": "doc",
    "_source": {
	"name": fake.name(),
  "age": fake.random_int(min=18, max=80, step=1),
  "salary": fake.random_int(min=1000, max=10000, step=500),
  "bank": fake.bank_country(),
	"street": fake.street_address(), 
	"city": fake.city(),
	"country": fake.country(),
	"zip":fake.zipcode()}
  }
  for x in range(998) # or for i,r in df.iterrows()
]

response = helpers.bulk(es, actions)
print(response)

