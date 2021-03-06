-- Query creating tables for clean/merged data

-- test table for all Date's
CREATE TABLE skeleton (
	"Date" DATE NOT NULL,
	PRIMARY KEY ("Date")
);

-- Create table for CO 2015-2020
CREATE TABLE CO (
     "Date" DATE NULL,
	 Daily_Max_8_hr_CO_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (100) NOT NULL,
	 AQI_CO INT NOT NULL,
	 Site_Name VARCHAR (100) NOT NULL,
	--  FOREIGN KEY ("Date") REFERENCES test ("Date"),
	 PRIMARY KEY ("Date", AQI_CO)
);

-- Create table for NO2 2015-2020
CREATE TABLE NO2 (
     "Date" DATE NOT NULL,
	 Daily_Max_1_hr_NO2_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (100) NOT NULL,
	 AQI_NO2 INT NOT NULL,
	 Site_Name VARCHAR (100) NOT NULL,
	 FOREIGN KEY ("Date") REFERENCES test ("Date"),
	 PRIMARY KEY ("Date", AQI_NO2)
);

-- Create table for O3 2015-2020
CREATE TABLE O3 (
     "Date" DATE NOT NULL,
	 Daily_Max_8_hr_Ozone_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (100) NOT NULL,
	 AQI_O3 INT NOT NULL,
	 Site_Name VARCHAR (100) NOT NULL,
     FOREIGN KEY ("Date") REFERENCES test ("Date"),
     PRIMARY KEY ("Date", AQI_O3)
);

-- Create table for PM_10 2015-2020
CREATE TABLE PM_10 (
     "Date" DATE NOT NULL,
	 Daily_Mean_PM10_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (100) NOT NULL,
	 AQI_PM_10 INT NOT NULL,
	 Site_Name VARCHAR (100) NOT NULL,
	 FOREIGN KEY ("Date") REFERENCES test ("Date"),
     PRIMARY KEY ("Date", AQI_PM_10)
);

-- Create table for PM_2.5 2015-2020
CREATE TABLE PM_2_5 (
     "Date" DATE NOT NULL,
	 Daily_Mean_PM_2_5_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (100) NOT NULL,
	 AQI_PM_2_5 INT NOT NULL,
	 Site_Name VARCHAR (100) NOT NULL,
	 FOREIGN KEY ("Date") REFERENCES test ("Date"),
     PRIMARY KEY ("Date", AQI_PM_2_5)
);

-- View tables
SELECT * FROM co;
SELECT * FROM no2;
SELECT * FROM o3;
SELECT * FROM pm_2_5;
SELECT * FROM pm_10;

-----------------------------------------------

-- JOINing tables on Date & AQI_[pollutant]

-- View skeleton table
SELECT * FROM skeleton;

-- Joining AQI across pollutants
SELECT skeleton."Date",
	co.AQI_CO,
	no2.AQI_NO2,
	o3.AQI_O3,
	pm_2_5.AQI_PM_2_5,
	pm_10.AQI_PM_10
INTO aqi_all
FROM skeleton
LEFT JOIN co
ON co."Date" = skeleton."Date"
LEFT JOIN no2
ON no2."Date" = skeleton."Date"
LEFT JOIN o3
ON o3."Date" = skeleton."Date"
LEFT JOIN pm_2_5
ON pm_2_5."Date" = skeleton."Date"
LEFT JOIN pm_10
ON pm_10."Date" = skeleton."Date"
ORDER BY skeleton."Date"
;

-- View aqi_all
SELECT * FROM aqi_all;