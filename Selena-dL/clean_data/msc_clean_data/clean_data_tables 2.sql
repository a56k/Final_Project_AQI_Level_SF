-- Creating clean tables from raw data on
-- pollution from 2015-2017 in SF Bay Area


---------------------------------------------------------
-- Year: 2015


-- Table: clean 2015 Carbon Monoxide (co) for SF Bay Area
CREATE TABLE "2015-co-sfbay" (
     DATE_Year DATE NOT NULL,
     AQS_Source VARCHAR(365) NOT NULL,
	 Site_ID INT NOT NULL,
	 POC INT NOT Null,
	 Daily_Max_8_hour_CO_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (365) NOT NULL,
	 DAILY_AQI_VALUE INT NOT NULL,
	 Site_Name VARCHAR (365) NOT NULL,
	 DAILY_OBS_COUNT INT NOT NULL,
	 PERCENT_COMPLETE FLOAT NOT NULL,
	 AQS_PARAMETER_CODE INT NOT NULL,
	 AQS_PARAMETER_DESC VARCHAR (365) NOT NULL,
	 CBSA_CODE INT NOT NULL,
	 CBSA_NAME VARCHAR (365) NOT NULL,
	 STATE_CODE INT NOT NULL,
	 STATE_US VARCHAR (365) NOT NULL,
	 COUNTY_CODE INT NOT NULL,
	 COUNTY VARCHAR (365) NOT NULL,
	 SITE_LATITUDE FLOAT NOT NULL,
	 SITE_LONGITUDE FLOAT NOT NULL
	--  ,
	--  PRIMARY KEY (DATE_Year)
);
-- Add PRIMARY KEY(s) after dropping columns, 
-- filtering data on Site_Name, exporting csv,
-- & creating a new table. Then import new csv 
-- into new table to JOIN Table(s).

-- view table
SELECT * FROM "2015-co-sfbay";

-- row count: 3202
SELECT 
   COUNT(*) 
FROM "2015-co-sfbay";

-- dropping column(s)
ALTER TABLE "2015-co-sfbay"
	DROP COLUMN AQS_Source,
	DROP COLUMN site_id,
	DROP COLUMN poc,
	DROP COLUMN daily_obs_count,
	DROP COLUMN percent_complete,
	DROP COLUMN aqs_parameter_code,
	DROP COLUMN aqs_parameter_desc,
	DROP COLUMN cbsa_code,
	DROP COLUMN cbsa_name,
	DROP COLUMN state_code,
	DROP COLUMN state_us,
	DROP COLUMN county_code,
	DROP COLUMN site_latitude,
	DROP COLUMN site_longitude
;

-- view table
SELECT * FROM "2015-co-sfbay";

-- -- filter data on Site_Name, then export as new csv
-- SELECT date_year, Daily_Max_8_hour_CO_Concentration, units,
-- 	daily_aqi_value, site_name, county
-- FROM "2015-co-sfbay"
-- WHERE (site_name 'Oakland_West' AND 'San_Francisco')
-- -- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31'
-- ;

-- filter data on Site_Name, then export as new csv
SELECT date_year, Daily_Max_8_hour_CO_Concentration, units,
	daily_aqi_value, site_name, county
FROM "2015-co-sfbay"
WHERE Site_Name 'San_Francisco'
;
