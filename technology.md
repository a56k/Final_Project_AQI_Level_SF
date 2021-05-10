# Technologies Used
## Data Cleaning and Analysis
We performed an exploratory analysis using Jupyter Notebook and VS Code, prior to loading the raw data in pgAdmin. We used Pandas to clean the data (analyze/drop/rename columns) & filter for our desired location(s) -- San Francisco. We merged our clean datasets so that each pollutant is mapped over the same time period (pandas), we then joined our datasets in postgreSQL. Interactive plots of the cleaned/merged data were made using Tabluea and Jupyter Notebook.

## Database Storage
We used a pgAdmin database through an AWS server to store our data. This SQL server was linked to Python via a SQL Alchemy connection string. We created an ERD using Quick DBD.

## Machine Learning
SciKitLearn is the ML library we used to create a classifier. We linked our Postrgres & AWS via a psycopg2 connection. We then read our dataframe and made predictions based on pre-determined criteria. Here we performed statistical and seasonal analyses.

## Dashboard
Our dashboard was made using Tableau. Plots are displayed on a simplified page. Some of these plots may be found on our README. Google Slides was integrated for our presentation.
