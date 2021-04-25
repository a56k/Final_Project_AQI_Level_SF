-- test.sql For creating tables for clean/merged data

-- test table for all Date's
CREATE TABLE test (
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


-- -- Fixing missing dates
-- INSERT INTO CO ( "Date", Daily_Max_8_hr_CO_Concentration, UNITS, AQI_CO, Site_Name)
-- VALUES ('2015-03-01', '0', 'ppm', '0', 'San Francisco');

-- -- Fixing the order for inserted date
-- ORDER BY co."Date";


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

-- View table
SELECT * FROM co;
SELECT * FROM no2;
SELECT * FROM o3;
SELECT * FROM pm_2_5;
SELECT * FROM pm_10;

-----------------------------------------------

-- Joining tables w/Date,AQI_[pollutant]

-- SELECT test."Date",
-- 	co.Daily_Max_8_hr_CO_Concentration,
-- 	co.UNITS,
-- 	co.AQI_CO,
-- 	co.Site_Name
-- FROM test
-- LEFT JOIN co
-- ON test."Date" = co."Date";

SELECT * FROM test;

-- -- pm_10
-- SELECT test."Date",
-- 	pm_10.AQI_PM_10
-- INTO join_1
-- FROM test
-- LEFT JOIN pm_10
-- ON test."Date" = pm_10."Date";

-- SELECT * FROM join_1;

-- -- co
-- SELECT test."Date",
-- 	co.AQI_CO,
-- 	join_1.AQI_PM_10
-- -- INTO join_2
-- FROM test
-- LEFT JOIN join_1
-- ON join_1."Date" = test."Date"
-- INNER JOIN co
-- ON join_1."Date" = co."Date"
-- ORDER BY co."Date"
-- ;


-- UPDATE table SET col1 = 0 WHERE col1 IS NULL;
-- UPDATE join_1 SET AQI_PM_10 = NULL WHERE AQI_PM_10 IS "0";


-- -- no2
-- SELECT test."Date",
-- 	no2.AQI_NO2
-- -- INTO join_3
-- FROM test
-- LEFT JOIN no2
-- ON test."Date" = no2."Date";

-- SELECT * FROM join_3;

-- Joining AQI across pollutants
SELECT test."Date",
	co.AQI_CO,
	no2.AQI_NO2,
	o3.AQI_O3,
	pm_2_5.AQI_PM_2_5,
	pm_10.AQI_PM_10
INTO aqi_all
FROM test
LEFT JOIN co
ON co."Date" = test."Date"
LEFT JOIN no2
ON no2."Date" = test."Date"
LEFT JOIN o3
ON o3."Date" = test."Date"
LEFT JOIN pm_2_5
ON pm_2_5."Date" = test."Date"
LEFT JOIN pm_10
ON pm_10."Date" = test."Date"
ORDER BY test."Date"
;

SELECT * FROM aqi_all;


-- Filtering for Max AQI value in row
SELECT a_a."Date", 
a_a.AQI_CO, 
a_a.AQI_NO2, 
a_a.AQI_O3, 
a_a.AQI_PM_2_5, 
a_a.AQI_PM_10
FROM aqi_all as a_a
WHERE (AQI_CO = (SELECT MAX(AQI_CO) FROM aqi_all))
AND (AQI_NO2 = (SELECT MAX(AQI_NO2) FROM aqi_all))
AND (AQI_O3 = (SELECT MAX(AQI_O3) FROM aqi_all))
AND (AQI_PM_2_5 = (SELECT MAX(AQI_PM_2_5) FROM aqi_all))
AND (AQI_PM_10 = (SELECT MAX(AQI_PM_10) FROM aqi_all))
;