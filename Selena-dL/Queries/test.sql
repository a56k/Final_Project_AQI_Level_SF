-- test.sql For creating tables for clean/merged data

-- Create table for CO 2015-2020
CREATE TABLE CO (
     "Date" DATE NOT NULL,
	 Daily_Max_8_hr_CO_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (100) NOT NULL,
	 AQI_CO INT NOT NULL,
	 Site_Name VARCHAR (100) NOT NULL,
	 PRIMARY KEY ("Date", AQI_CO)
);

-- Create table for NO2 2015-2020
CREATE TABLE NO2 (
     "Date" DATE NOT NULL,
	 Daily_Max_1_hr_NO2_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (100) NOT NULL,
	 AQI_NO2 INT NOT NULL,
	 Site_Name VARCHAR (100) NOT NULL,
	 PRIMARY KEY ("Date", AQI_NO2)
     FOREIGN KEY ("Date")
);

-- Create table for O3 2015-2020
CREATE TABLE O3 (
     "Date" DATE NOT NULL,
	 Daily_Max_8_hr_Ozone_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (100) NOT NULL,
	 AQI_O3 INT NOT NULL,
	 Site_Name VARCHAR (100) NOT NULL,
	 PRIMARY KEY ("Date", AQI_O3)
     FOREIGN KEY ("Date")
);

-- Create table for PM_10 2015-2020
CREATE TABLE PM_10 (
     "Date" DATE NOT NULL,
	 Daily_Mean_PM10_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (100) NOT NULL,
	 AQI_PM_10 INT NOT NULL,
	 Site_Name VARCHAR (100) NOT NULL,
	 PRIMARY KEY ("Date", AQI_PM_10)
     FOREIGN KEY ("Date")
);

-- Create table for PM_2.5 2015-2020
CREATE TABLE PM_2_5 (
     "Date" DATE NOT NULL,
	 Daily_Mean_PM_2_5_Concentration FLOAT NOT NULL,
	 UNITS VARCHAR (100) NOT NULL,
	 AQI_PM_2_5 INT NOT NULL,
	 Site_Name VARCHAR (100) NOT NULL,
	 PRIMARY KEY ("Date", AQI_PM_2_5)
     FOREIGN KEY ("Date")
);

-- View table
SELECT * FROM co;
SELECT * FROM no2;
SELECT * FROM o3;
SELECT * FROM pm_2_5;
SELECT * FROM pm_10;

-----------------------------------------------

-- Joining tables w/Date,AQI_[pollutant]
