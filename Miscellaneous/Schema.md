# Schema
Below is a sample of the schema for our data. Our primary keys and foreign keys are still being established. This CSV's we used were integrated through AWS and Postgress. Since it is an ipynb file we will use Jupyternotebook and/or PySpark.


--Creating tables for SF 2018 Carbon Monoxide
- CREATE TABLE SF_2018_CO (
- DATE_Year DATE NOT NULL,
- AQS_Source VARCHAR(365) NOT NULL,
- Site_ID INT NOT NULL,
- POC INT NOT Null,
- Daily_Max_8_hour_CO_Concentration FLOAT NOT NULL,
- UNITS VARCHAR (365) NOT NULL,
- DAILY_AQI_VALUE INT NOT NULL,
- Site_Name VARCHAR (365) NOT NULL,
- DAILY_OBS_COUNT INT NOT NULL,
- PERCENT_COMPLETE FLOAT NOT NULL,
- AQS_PARAMETER_CODE INT NOT NULL,
- AQS_PARAMETER_DESC VARCHAR (365) NOT NULL,
- CBSA_CODE INT NOT NULL,
- CBSA_NAME VARCHAR (365) NOT NULL,
- STATE_CODE INT NOT NULL,
- STATE_US VARCHAR (365) NOT NULL,
- COUNTY_CODE INT NOT NULL,
- COUNTY VARCHAR (365) NOT NULL,
- SITE_LATITUDE FLOAT NOT NULL,
- SITE_LONGITUDE FLOAT NOT NULL,
- );

