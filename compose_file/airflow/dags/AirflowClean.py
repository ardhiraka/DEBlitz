import datetime as dt
from datetime import timedelta

from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.operators.python_operator import PythonOperator

import pandas as pd

def cleanScooter():
    df=pd.read_csv('/opt/airflow/dags/scooter.csv')
    df.drop(columns=['region_id'], inplace=True)
    df.columns=[x.lower() for x in df.columns]
    df['started_at']=pd.to_datetime(df['started_at'],format='%m/%d/%Y %H:%M')
    df.to_csv('/opt/airflow/dags/cleanscooter.csv')


def filterData():
    df=pd.read_csv('/opt/airflow/dags/cleanscooter.csv')
    fromd = '2019-05-23'
    tod='2019-06-03'
    tofrom = df[(df['started_at']>fromd)&(df['started_at']<tod)]
    tofrom.to_csv('/opt/airflow/dags/may23-june3.csv')	


default_args = {
    'owner': 'raka',
    'start_date': dt.datetime(2022, 11, 30),
    'retries': 1,
    'retry_delay': dt.timedelta(minutes=15),
}


with DAG('H8CleanData',
         default_args=default_args,
         schedule_interval=timedelta(minutes=60),      # '0 * * * *',
         ) as dag:

    cleanData = PythonOperator(task_id='clean',
                                 python_callable=cleanScooter)
    
    selectData = PythonOperator(task_id='filter',
                                 python_callable=filterData)

    copyFile = BashOperator(task_id='copy',
                                 bash_command='cp /opt/airflow/dags/may23-june3.csv /opt/airflow/logs')



cleanData >> selectData >> copyFile
