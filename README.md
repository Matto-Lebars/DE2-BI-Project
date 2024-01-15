# DE2-BI-Project

## Project Description

## Docker Setup

To setup the docker environment, download the `TDERP.bak` from https://www.swisstransfer.com/d/871e588b-986e-4e41-9531-8eb1f947bf70 
Then place the file in the [ms-sql](sql%2Fms-sql) folder.

Run the following command: `docker-compose up -d`

Then connect to the databases with the following credentials:
- ***Ms SQL:***
  - **Host:** localhost
  - **User:** sa
  - **Password:** T€l€c0mste!
  - **Port:** 1433
- ***MariaDB:***
  - **Host:** localhost
  - **User:** project
  - **Password:** Telecom
  - **Port:** 3306

Execute the following command to create the ms sql database: [ObjetsInit.sql](sql%2Fms-sql%2FObjetsInit.sql)

## Package Database API

### Requirements

Requirements are listed in the [requirements.txt](requirements.txt) file. Run the following command to install them: `pip install -r requirements.txt`

We also need to install the following driver: `Pilote ODBC pour SQL Server version 17`
Available here: https://go.microsoft.com/fwlink/?linkid=2249004

## Run the ETL process

In order to populate the MariaDB database, you have to run the jupyter notebook [ETL-Process.ipynb](jupyter/ETL-Process.ipynb).
This will create the database and populate it with the data from the ms sql database.

## Data Visualization

In order to visualize the data, you have to run the jupyter notebook [Data-Visualization.ipynb](jupyter/Data-Visualization.ipynb).