from elasticsearch import Elasticsearch
from faker import Faker

fake=Faker()
es = Elasticsearch("http://localhost:9200") #or pi {127.0.0.1}

doc={"name": fake.name(),
  	"age": fake.random_int(min=18, max=80, step=1),
  	"salary": fake.random_int(min=1000, max=10000, step=500),
  	"bank": fake.bank_country(),
	"street": fake.street_address(), 
	"city": fake.city(),
	"country": fake.country(),
	"zip":fake.zipcode()}

res=es.index(index="users", doc_type="_doc", document=doc)
print(res)