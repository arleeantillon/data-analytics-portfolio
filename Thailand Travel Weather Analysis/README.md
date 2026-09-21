# Thailand Travel Weather Analysis

## Project Overview

I created this project to practice the full data analysis process using a topic I was personally interested in: traveling to Thailand.

The goal was to look at weather patterns across popular destinations in Thailand and see how conditions changed throughout 2025. I focused on temperature, rainfall, rainy days, humidity, and wind speed.

I started with daily weather data, cleaned and organized it in Google Sheets, analyzed it using SQL, and then created an interactive dashboard in Tableau.

## Tools Used

- Google Sheets - data cleaning and organization
- SQL (SQLite) - data analysis and creating monthly summaries
- Tableau - data visualization and dashboard creation

## Dataset

The weather data came from Open-Meteo historical weather data.

The dataset includes daily weather information from January through December 2025 for 11 destinations in Thailand:

- Bangkok
- Chiang Mai
- Chiang Rai
- Baan Rak Thai
- Phuket
- Krabi
- Koh Samui
- Koh Tao
- Pattaya
- Hua Hin
- Ayutthaya

The weather information includes temperature, rainfall, humidity, and wind speed.

## Data Cleaning

I first cleaned and organized the daily weather data in Google Sheets.

Some of the things I did were:

- Added destination names to the location IDs
- Renamed columns to make them easier to understand
- Added a month column
- Checked for duplicate rows
- Checked for missing values
- Created a rainy day column based on whether rain was recorded
- Made sure the dates and destination names were organized correctly

After cleaning, the dataset contained 4,015 daily weather records.

![Cleaned Weather Data](images/weather_data_cleaning.png)

## SQL Analysis

After cleaning the data, I imported it into SQLite and used SQL to explore the weather patterns.

I used SQL to calculate:

- Average temperature
- Average high and low temperatures
- Total rainfall
- Number of rainy days
- Average humidity
- Average maximum wind speed

I also grouped the daily data by destination and month. This created a monthly summary that was easier to use for my Tableau dashboard.

![Monthly Weather Summary SQL](images/monthly_weather_summary_sql.png)

Some of the SQL skills I practiced in this project were:

- SELECT
- AVG()
- SUM()
- ROUND()
- CASE WHEN
- GROUP BY
- ORDER BY

The full SQL analysis can be found in [`sql/thailand_weather_analysis.sql`](sql/thailand_weather_analysis.sql).

## Tableau Dashboard

After completing the SQL analysis, I used the monthly weather summary to create an interactive Tableau dashboard.

The dashboard lets the user select a destination and explore its weather throughout the year. A month can also be selected to compare travel weather conditions across the destinations on the map.

The dashboard includes:

- Average high temperature
- Average low temperature
- Average humidity
- Total rainfall
- Monthly high and low temperatures
- Monthly rainfall
- Monthly humidity
- Monthly wind speed
- A map comparing weather conditions across destinations

![Thailand Travel Weather Dashboard](images/thailand_weather_dashboard.png)

## Travel Weather Categories

For the map, I created a calculated field in Tableau to give a simple comparison of weather conditions.

I used average temperature and the number of rainy days to separate the destinations into three categories:

- **More Favorable** - average temperature between 70°F and 85°F and 15 or fewer rainy days
- **Moderate** - average temperature between 65°F and 86°F and 25 or fewer rainy days
- **Less Favorable** - conditions outside of those ranges

These categories are only meant to make the weather easier to compare. They are not an official travel rating because different travelers may prefer different weather.

## What I Learned

This project helped me practice taking data through multiple steps instead of only creating charts.

I learned how to clean a raw dataset, use SQL to summarize thousands of daily records, and turn the results into a dashboard that is easier to understand.

It also gave me more practice using Google Sheets, SQL, and Tableau together in one project.

## Project Files

- `data/thailand_weather_2025_raw.csv` - original weather data
- `data/thailand_weather_2025_cleaned.csv` - cleaned daily weather data
- `data/thailand_weather_2025_monthly_summary.csv` - monthly summary used for Tableau
- `sql/thailand_weather_analysis.sql` - SQL queries used for the analysis
- `tableau/thailand_travel_weather_dashboard.twb` - Tableau workbook
- `images/` - screenshots used in this README

## Limitations

This project only uses weather data from 2025, so it should not be treated as a long-term prediction of what the weather will always be like in Thailand.

The travel weather categories are also based on simple temperature and rainy-day ranges that I created for this project. What someone considers good travel weather can depend on their personal preferences.
