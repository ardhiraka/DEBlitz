from faker import Faker
import csv
import pandas as pd

output=open('data.csv','w')
fake=Faker()
header=['name','age', 'salary', 'bank', 'street','city','state','country']
mywriter=csv.writer(output)
mywriter.writerow(header)
for r in range(1000):
    mywriter.writerow(
        [
            fake.name(),
            fake.random_int(min=18, max=80, step=1),
            fake.random_int(min=1000, max=10000, step=500),
            fake.bank_country(),
            fake.street_address(), 
            fake.city(),
            fake.state(),
            fake.country(),
        ]
    )
output.close()

df = pd.read_csv('data.csv')
print(df.head())