{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 select COUNT(*)\
from thailand_weather_2025;\
\
\
select count(DISTINCT destination) as total_destinations\
from thailand_weather_2025;\
\
\
SELECT\
    destination,\
    ROUND(AVG(avg_temp_f), 1) AS avg_temperature_f\
FROM thailand_weather_2025\
GROUP BY destination\
ORDER BY avg_temperature_f DESC;\
\
\
SELECT\
    destination,\
    month,\
    ROUND(AVG(avg_temp_f), 1) AS avg_temperature_f\
FROM thailand_weather_2025\
GROUP BY destination, month\
ORDER BY destination, MIN(date);\
\
\
SELECT\
    destination,\
    month,\
    COUNT(*) AS days_in_month,\
    SUM(CASE WHEN rainy_day = 'Yes' THEN 1 ELSE 0 END) AS rainy_days\
FROM thailand_weather_2025\
GROUP BY destination, month\
ORDER BY destination, MIN(date);\
\
\
SELECT\
    destination,\
    month,\
    ROUND(SUM(rain_in), 2) AS total_rainfall_in,\
    SUM(CASE WHEN rainy_day = 'Yes' THEN 1 ELSE 0 END) AS rainy_days\
FROM thailand_weather_2025\
GROUP BY destination, month\
ORDER BY destination, MIN(date);\
\
\
\
SELECT\
    destination,\
    month,\
    ROUND(AVG(avg_humidity_pct), 1) AS avg_humidity_pct\
FROM thailand_weather_2025\
GROUP BY destination, month\
ORDER BY destination, MIN(date);\
\
\
SELECT\
    destination,\
    month,\
    ROUND(AVG(max_wind_speed_mph), 1) AS avg_max_wind_speed_mph,\
    ROUND(AVG(max_wind_gust_mph), 1) AS avg_max_wind_gust_mph\
FROM thailand_weather_2025\
GROUP BY destination, month\
ORDER BY destination, MIN(date);\
\
\
\
SELECT\
    destination,\
    ROUND(SUM(rain_in), 2) AS total_rainfall_in,\
    SUM(CASE WHEN rainy_day = 'Yes' THEN 1 ELSE 0 END) AS rainy_days\
FROM thailand_weather_2025\
GROUP BY destination\
ORDER BY total_rainfall_in ASC;\
\
\
SELECT\
    destination,\
    SUM(CASE WHEN rainy_day = 'Yes' THEN 1 ELSE 0 END) AS rainy_days,\
    365 - SUM(CASE WHEN rainy_day = 'Yes' THEN 1 ELSE 0 END) AS days_without_rain\
FROM thailand_weather_2025\
GROUP BY destination\
ORDER BY rainy_days ASC;\
\
\
SELECT\
    destination,\
    ROUND(AVG(avg_temp_f), 1) AS avg_temp_f,\
    ROUND(AVG(max_temp_f), 1) AS avg_high_f,\
    ROUND(AVG(min_temp_f), 1) AS avg_low_f\
FROM thailand_weather_2025\
GROUP BY destination\
ORDER BY avg_temp_f ASC;\
\
\
SELECT\
    destination,\
    ROUND(AVG(avg_humidity_pct), 1) AS avg_humidity_pct\
FROM thailand_weather_2025\
GROUP BY destination\
ORDER BY avg_humidity_pct ASC;\
\
\
SELECT\
    destination,\
    ROUND(AVG(avg_temp_f), 1) AS avg_temp_f,\
    ROUND(SUM(rain_in), 2) AS total_rainfall_in,\
    SUM(CASE WHEN rainy_day = 'Yes' THEN 1 ELSE 0 END) AS rainy_days,\
    ROUND(AVG(avg_humidity_pct), 1) AS avg_humidity_pct\
FROM thailand_weather_2025\
WHERE month = 'January'\
GROUP BY destination\
ORDER BY rainy_days ASC;\
\
\
SELECT\
    destination,\
    month,\
    ROUND(AVG(avg_temp_f), 1) AS avg_temp_f,\
    ROUND(AVG(max_temp_f), 1) AS avg_high_f,\
    ROUND(AVG(min_temp_f), 1) AS avg_low_f,\
    ROUND(SUM(rain_in), 2) AS total_rainfall_in,\
    SUM(CASE WHEN rainy_day = 'Yes' THEN 1 ELSE 0 END) AS rainy_days,\
    ROUND(AVG(avg_humidity_pct), 1) AS avg_humidity_pct,\
    ROUND(AVG(max_wind_speed_mph), 1) AS avg_max_wind_speed_mph\
FROM thailand_weather_2025\
GROUP BY destination, month\
ORDER BY destination, MIN(date);\
}