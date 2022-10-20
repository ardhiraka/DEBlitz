from faker import Faker
from kafka import KafkaProducer
import random
import json
import time

fake = Faker()

def get_registered_data():
    return {
        'user_id': fake.random_int(min=20000, max=100000),
        'user_name':fake.name(),
        'user_address':fake.street_address() + ' | ' + fake.city() + ' | ' + fake.country_code(),
        'platform': random.choice(['Mobile', 'Laptop', 'Tablet']),
        'signup_at': str(fake.date_time_this_month())
    }

def json_serializer(data):
    return json.dumps(data).encode('utf-8')

producer = KafkaProducer(bootstrap_servers=['192.168.18.29:9092'],
                        value_serializer=json_serializer)

if __name__ == "__main__":
    while 1 == 1:
        registered_data = get_registered_data()
        print(registered_data)
        producer.send('registered_user', registered_data)
        time.sleep(3)