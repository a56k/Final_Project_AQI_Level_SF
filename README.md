### Final Project Overview

AQI Level in San Francisco and future impact of a fast re-opening


[Posgres_SQL Connection](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/AmirO/Final_Project_CSVs/Postgres_SQL/Postgres%20Connection.ipynb)

[Time Series](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/sf_aqi_forecast_v1.ipynb) 

[Time Series Fully Deployed Code](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/sf_time_based_analysis/sf_aqi_forecast_v1%20copy.ipynb)

[Machine learning model](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/NataliaV/ML_Model/MLModel.ipynb)

[Final Presentation - Google Slides](https://docs.google.com/presentation/d/1rGcUy4AIucMLLih3eFqtMdZGiTV2VTy_V_OdEt2b280/edit#slide=id.gd5224e0981_0_231)

[Tableau Dashboard Video Snippet](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/2021-05-06%2020.34.28%20Tableau%20Dashboard%2092599881889/zoom_0.mp4)



--------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Purpose 

We are looking at air quality pollution data in San Francisco pre-COVID and comparing it to air quality pollution after lockdown. We have seen in various studies that air quality pollution levels in some cities have decreased during lockdown measures and subsequently increased when these cities began re-opening. Our question asks whether we should proceed to the fast enablement of acivities that are at the root cuase of emissions and conentrations of pollutants in SF;which then impacts the equilibrium that was creaed by the Lockdown memasures in this past year.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Communication Protocol

We established our team's communication protocol in the early stage of the project. We used tools such as:
1. Slack to share relevant information and schedule meetings to discuss our progress. 
2. Google Drive/ Google Doc to capture notes and progress from weekly meetings' session and tasks summary
3. Emails notification to alert teammates of any changes made to the repository
4. Zoom & google Meet to work on assigned tasks.





--------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Individual Branches 

The project's repository contains multiple branches, as seen in the attached picture. Each branch component is active to enable respective team members to commit their work and submit the repository link to canvas. 

![Branches](https://github.com/a56k/ML---Final-Project---Pollution-Future-Impact-Analysis-/blob/main/img/Screen%20Shot%202021-04-09%20at%2010.00.29%20PM.png)

![Commit_count](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/img/Screen%20Shot%202021-05-06%20at%207.58.20%20PM.png)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Data Cleaning and Analysis
We performed an exploratory analysis using Jupyter Notebook and VS Code, prior to loading the raw data in pgAdmin. We used Pandas to clean the data: analyze/drop/rename columns & filter for our desired location(s). We will merge our clean datasets so that each pollutant is mapped over the same year using Python and/or postgresQL.

### Database Storage
We use the pgAdmin database to store our data.

### Data Sources

  •	[US EPA: United States Environmental Protection Agency](https://www.epa.gov/)
  
  Other Sources
  [AirNow.gov](https://www.airnow.gov/)
  [CalFire](https://www.fire.ca.gov/) 
  [CalDeptPublicHealth](https://www.cdph.ca.gov/)

Definitions
  •	What makes up Air Quality Index (AQI)? 
  
   [Carbon Monoxide (CO)](https://www.epa.gov/co-pollution/basic-information-about-carbon-monoxide-co-outdoor-air-pollution#What%20is%20CO) - burning fuels from cars & furnaces
    
   [Sulfur Dioxide (SO2)](https://www.epa.gov/so2-pollution/sulfur-dioxide-basics#what%20is%20so2) - burning fossil fuels in industry
    
   [Nitrogen Dioxide (NO2)](https://www.epa.gov/no2-pollution/basic-information-about-no2#What%20is%20NO2) - chemical reaction from burning fuels
    
   [Particulate Matter 10 (PM 10)](https://www.epa.gov/pm-pollution/particulate-matter-pm-basics#PM) - inhalable dust, d~10 μm from construction, smoke, chemicals by industry
    
   [Particulate Matter 2.5 (PM 2.5)](https://www.epa.gov/pm-pollution/particulate-matter-pm-basics#PM) - inhalable dust d~2.5 μm
    
   [Ozone (O3)](https://www.epa.gov/ground-level-ozone-pollution/ground-level-ozone-basics) - smog from cars, industry, chemicals


----------------------------------------------------------------------------------------------------------------------------------------------------------------

### Technology & Tools

Database & Graphs: Languages & Packages

  1. Python in Jupyter Notebook 
  2. pandas, matplotlib, plotly, numpy
  3. PostrgesQL in VS Code and pgAdmin
  4. SQL Alchemy
  5. Tableau & Python for plots

Machine Learning model

  1. Python 
  2. matplotlib pyplot, pandas, numpy
  3. SQL & SQL Alchemy
  4. Logistic regression

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
### Machine Learning Model

[Machine learning model](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/NataliaV/ML_Model/MLModel.ipynb)

We are predicting Air Quality Index (AQI) as Safe or Unsafe. (AQI > = 150 is Unsafe)


For this classification problem we will compare **Ensemble* and **Resampling** techniques using Python sklearn library.  We will create a logistic regression, Random Forest, and Ada Boost classifier models, chose the best performer, and provide recommendations to future model improvements. In all escenarios, we will be fitting the training data, and making a prediction.

columns = CO, NO2, OZONE, pm10, pm2.5, SO2

target = AQI  this variable will be converted to binary = "Safe", "Unsafe"

Classification metrics like accuracy score, precision and sensitivity are analyzed for each target class to asses model performance.

![AQI Level Overview](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/img/Screen%20Shot%202021-05-06%20at%208.57.40%20PM.png)

![Descrptive Statistics](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/img/Screen%20Shot%202021-05-06%20at%208.57.57%20PM.png)

![Model Perfromance Summary](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/img/Screen%20Shot%202021-05-06%20at%208.58.49%20PM.png)

![Model Consolidation Summary](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/img/Screen%20Shot%202021-05-06%20at%208.59.10%20PM.png)



--------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Complications

Encountered complications ranged from varying sources. Mainly, communicating our intent, identifying our critical questions, and establishing which hypothesis to further invest. These complications led to re-shuffling our strategy to match the data collected and provide an analysis that raised more questions than answers. With that, we have a project that has the potential to incentivize people and companies to think consciously about their approach to re-opening activities. We did not emphasize these recommendations and weren't specific enough to provide an actionable plan based on our research.  

Data:

Because we could easily expand our scope, transforming and cleaning the data to match our key questions became crucial. Thankfully, the team merged the essential data collected from 2015 to 2020 to drive the analysis. One aspect that is prone to error in the research is how much data we eliminated from the csv. To maintain uniformity and keep the scope to San Francisco, we chose to discard different measuring sites that would have allowed us to further expand our research and include more datapoints. Additionally, eliminating data restricted our ability to forecast future trends based on the resampling techniques applied to our time series analysis & ML model.

![QuickDBD - Project DataBase Map](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/Selena-dL/Project_Database/QuickDBD-export.png)


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Solutions

Project Analysis:

We manually gathered CSVs from EPA website and decided to stick to 1 measuring site.  As we imported the CSV’s into Jupyter notebook, we were then able to clean and filter for the San Francisco site. 

Data Transformation 

1.	Exported as CSV
2.	Created tables and imported CVSs into Postgres
3.	Joined then used SQL alchemy to gather joined csv

Exploratory Analysis

1.	[Time Series](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/sf_aqi_forecast_v1.ipynb) (SARIMA) to capture trends and seasonality of the AQI Level
2.	[Machine learning model](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/NataliaV/ML_Model/MLModel.ipynb): to predict our accuracy on the measuring target “Safe” & “Unsafe”
3.	Plenty of room for future Analysis, shall we have enough data


![AQIMAX forecast](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/img/Screen%20Shot%202021-05-03%20at%208.23.56%20PM.png)


Ultimately, the list below best summarizes our solution to the project. 

•	Visualized AQI data in SF from 2015-2020 w/ emphasis on COVID-19 crisis (2020)

•	Created Dataframe to extract AQI Max values

•	Performed Time Series, Exploratory, & Statistical analyses on data

•	Ran ML model to predict safe/unsafe levels of AQI

•	Results suggest we should reconsider process of returning to industry due to risks of raising AQI levels above “safe” threshold

Thus, if companies and economies aren’t consciously prioritizing conscious reopening and the vast population appears to have fewer reservations to care for the environment, 2020 will be known as a wasted opportunity to enact new habits to combat human-made pollution.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Observations

[Machine learning model](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/NataliaV/ML_Model/MLModel.ipynb)

[Time Series Fully Deployed Code](https://github.com/a56k/Final_Project_AQI_Level_SF/blob/main/sf_time_based_analysis/sf_aqi_forecast_v1%20copy.ipynb)

Though Air-pollution levels do not depend on human activity alone—we could understand how a decrease in human activities impacted AQI levels without discarding other weather conditions.

As people return to their regular activities (work commute, public transport, outings, etc.) and economies begin to recover, we can observe the air pollution is nearing pre-pandemic levels. We did observe this tendency in our Trend Base Analysis Model used to extract seasonality. We contrasted the trends against loosening restrictions activities driven by San Francisco's local government bodies.

Another observation captured in our analysis involved the "p.m.2.5" pollutant, which was the biggest driver of the AQI Max level. We noticed this detail in our exploratory data analysis section, highlighted that these similarities caused our ML model to overfit. 

Machine Learning:

•	Combining the Exploratory Data Analysis and Machine Learning Model provided us the following results:

•	AQI Max levels decreased in SF during complete lockdown (March 2020 - August 2020)  

•	AQI pm 2.5 is the primary driver of AQI Max    

•	Approximately 25% of AQI Max data from 2015 - 2020 sits on the unsafe level

•	Cluster Centroids undersample + Logistic regression gives us an accuracy score of 95%

•	The model performs best to predict SAFE levels of AQI Max


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
