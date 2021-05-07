### Final Project Overview

AQI Level in San Francisco and future impact of a fast re-opening



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

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Data Sources

  •	US EPA: United States Environmental Protection Agency
  Other Sources
  •	AirNow.gov, CalFire, CalDeptPublicHealth

Definitions
  •	What makes up Air Quality Index (AQI)? 
    o	[Carbon Monoxide (CO)](https://www.epa.gov/co-pollution/basic-information-about-carbon-monoxide-co-outdoor-air-pollution#What%20is%20CO) - burning fuels from cars & furnaces
    o	Sulfur Dioxide (SO2) - burning fossil fuels in industry
    o	Nitrogen Dioxide (NO2) - chemical reaction from burning fuels
    o	Particulate Matter 10 (PM 10) - inhalable dust, d~10 μm from construction, smoke, chemicals by industry
    o	Particulate Matter 2.5 (PM 2.5) - inhalable dust d~2.5 μm
    Ozone (O3) - smog from cars, industry, chemicals







-----------------------------------------------------------------------------------------------------------------------------------------------------------------
### Machine Learning Model

We are predicting Air Quality Index (AQI) as Safe or Unsafe. (AQI > = 150 is Unsafe)



For this classification problem we will compare **Ensemble* and **Resampling** techniques using Python sklearn library.  We will create a logistic regression, Random Forest, and Ada Boost classifier models, chose the best performer, and provide recommendations to future model improvements. In all escenarios, we will be fitting the training data, and making a prediction.

columns = CO, NO2, OZONE, pm10, pm2.5, SO2

target = AQI  this variable will be converted to binary = "Safe", "Unsafe"

Classification metrics like accuracy score, precision and sensitivity are analyzed for each target class to asses model performance.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Complications

Encountered complications ranged from varying sources. Mainly, communicating our intent, identifying our critical questions, and establishing which hypothesis to further invest. These complications led to re-shuffling our strategy to match the data collected and provide an analysis that raised more questions than answers. With that, we have a project that has the potential to incentivize people and companies to think consciously about their approach to re-opening activities. We did not emphasize these recommendations and weren't specific enough to provide an actionable plan based on our research.  

Data:
Because we could easily expand our scope, transforming and cleaning the data to match our key questions became crucial. Thankfully, the team merged the essential data collected from 2015 to 2020 to drive the analysis. One aspect that is prone to error in the research is how much data we eliminated from the csv. To maintain uniformity and keep the scope to San Francisco, we chose to discard different measuring sites that would have allowed us to further expand our research and include more datapoints. Additionally, eliminating data restricted our ability to forecast future trends based on the resampling techniques applied to our time series analysis & ML model.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Solutions

Project Analysis:

We manually gathered CSVs from EPA website and decided to stick to 1 measuring site.  As we imported the CSV’s into Jupyter notebook, we were then able to clean and filter for the San Francisco site. 

Data Transformation 

1.	Exported as CSV
2.	Created tables and imported CVSs into Postgres
3.	Joined then used SQL alchemy to gather joined csv

Exploratory Analysis

1.	Time Series (SARIMA) to capture trends and seasonality of the AQI Level
2.	Machine learning model to predict our accuracy on the measuring target “Safe” & “Unsafe”
3.	Plenty of room for future Analysis, shall we have enough data


Ultimately, the list below best summarizes our solution to the project. 

•	Visualized AQI data in SF from 2015-2020 w/ emphasis on COVID-19 crisis (2020)
•	Created Dataframe to extract AQI Max values
•	Performed Time Series, Exploratory, & Statistical analyses on data
•	Ran ML model to predict safe/unsafe levels of AQI
•	Results suggest we should reconsider process of returning to industry due to risks of raising AQI levels above “safe” threshold

Thus, if companies and economies aren’t consciously prioritizing conscious reopening and the vast population appears to have fewer reservations to care for the environment, 2020 will be known as a wasted opportunity to enact new habits to combat human-made pollution.





--------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Observations

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
