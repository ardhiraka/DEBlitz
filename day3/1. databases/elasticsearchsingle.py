from elasticsearch import Elasticsearch
from faker import Faker

fake=Faker()
es = Elasticsearch("http://localhost:9200") #or pi {127.0.0.1}

doc={"name": fake.name(),"street": fake.street_address(), "city": fake.city(),"zip":fake.zipcode()}

res=es.index(index="users", doc_type="_doc", document=doc)
print(res)