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
  - **Password:** Suc€MonGland!
  - **Port:** 1433
- ***MariaDB:***
  - **Host:** localhost
  - **User:** connard
  - **Password:** ViellePute
  - **Port:** 3306

Execute the following command to create the ms sql database: [ObjetsInit.sql](sql%2Fms-sql%2FObjetsInit.sql)