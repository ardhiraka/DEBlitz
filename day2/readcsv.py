import csv


with open('/home/raka/data.csv') as f:
	myreader=csv.DictReader(f)
	headers=next(myreader)
	for row in myreader:
		print(row['name'])
