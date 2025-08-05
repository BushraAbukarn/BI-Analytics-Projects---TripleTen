🛺 The Zuber Database
📋 Project Description
This project involves exploratory data analysis using a PostgreSQL database containing information on taxi rides in Chicago. The database includes details on rides, cabs, weather, and city neighborhoods.

🗂️ Database Schema

The Zuber Database
Description of the data
A database with info on taxi rides in Chicago:
### neighborhoods table: data on city neighborhoods
- `neighborhood_id`: Unique identifier for each neighborhood
- `name`: Name of the neighborhood

### cabs table: data on taxis
- `cab_id`: Unique identifier for each cab (vehicle code)
- `vehicle_id`: The vehicle's technical ID
- `company_name`: The company that owns the vehicle

### trips table: data on rides
- `trip_id`: Unique identifier for each ride (ride code)
- `cab_id`: Code of the vehicle operating the ride
- `start_ts`: Date and time of the beginning of the ride (rounded to the hour)
- `end_ts`: Date and time of the end of the ride (rounded to the hour)
- `duration_seconds`: Ride duration in seconds
- `distance_miles`: Ride distance in miles
- `pickup_location_id`: Pickup neighborhood code
- `dropoff_location_id`: Dropoff neighborhood code

### weather_records table: data on weather
- `record_id`: Weather record code
- `ts`: Record date and time (rounded to the hour)
- `temperature`: Temperature when the record was taken
- `description`: Brief description of weather conditions, e.g. "light rain" or "scattered clouds"
 
-- Your SQL code here
SELECT *
FROM trips
WHERE duration_seconds > 3600;


Tasks 1-4: Exploratory data analysis
1. Print the company_name field. Find the number of taxi rides for each taxi company for November 15-16, 2017, name the resulting field trips_amount and print it, too. Sort the results by the trips_amount field in descending order.
   SELECT cabs.company_name AS company_name, COUNT(cabs.company_name) AS trips_amount
FROM cabs INNER JOIN trips ON cabs.cab_id = trips.cab_id 
WHERE trips.start_ts::date BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY cabs.company_name
ORDER BY trips_amount DESC;

2. Find the number of rides for every taxi companies whose name contains the words "Yellow" or "Blue" for November 1-7, 2017. Name the resulting variable trips_amount. Group the results by the company_name field.
SELECT cabs.company_name, COUNT(cabs.company_name) AS trips_amount
FROM cabs 
INNER JOIN trips ON trips.cab_id = cabs.cab_id 
WHERE (cabs.company_name LIKE '%Yellow%' OR cabs.company_name LIKE '%Blue%') AND 
trips.start_ts::date BETWEEN '2017-11-01' AND '2017-11-07' 
GROUP BY cabs.company_name;

3. For November 1-7, 2017, the most popular taxi companies were Flash Cab and Taxi Affiliation Services. Find the number of rides for these two companies and name the resulting variable trips_amount. Join the rides for all other companies in the group "Other." Group the data by taxi company names. Name the field with taxi company names company. Sort the result in descending order by trips_amount.
SELECT 
     CASE WHEN company_name = 'Flash Cab' THEN 'Flash Cab'
          WHEN company_name = 'Taxi Affiliation Services' THEN 'Taxi Affiliation Services'
          ELSE 'Other'
     END AS company,
     COUNT(trips.trip_id) AS trips_amount
FROM cabs INNER JOIN trips ON trips.cab_id = cabs.cab_id 
WHERE trips.start_ts::date BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY company
ORDER BY COUNT(trips.trip_id) DESC;

4. Retrieve the identifiers of the O'Hare and Loop neighborhoods  from the neighborhoods table.
   SELECT name, neighborhood_id FROM neighborhoods 
WHERE name IN ('O''Hare', 'Loop');
Tasks 5-7: Investigate whether the duration of rides from the the Loop to O'Hare International Airport changes on rainy Saturdays

5. For each hour, retrieve the weather condition records from the weather_records table. Using the CASE operator, break all hours into two groups: Bad if the description field contains the words rain or storm, and Good for others. Name the resulting field weather_conditions. The final table must include two fields: date and hour (ts) and weather_conditions.
SELECT 
      ts, 
      CASE WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad' 
           ELSE 'Good'
      END AS weather_condtions
FROM 
weather_records;
6. Retrieve from the trips table all the rides that started in the Loop (pickup_location_id: 50) on a Saturday and ended at O'Hare (dropoff_location_id: 63). Get the weather conditions for each ride. Use the method you applied in the previous task. Also, retrieve the duration of each ride. Ignore rides for which data on weather conditions is not available.
SELECT trips.start_ts, T.weather_condition, trips.duration_seconds 
FROM trips INNER JOIN (SELECT ts, 
    CASE WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad' ELSE 'Good'
    END AS weather_condition FROM weather_records) T ON T.ts = trips.start_ts 
WHERE trips.pickup_location_id = 50 AND 
      trips.dropoff_location_id = 63 AND  
      EXTRACT(DOW FROM trips.start_ts) = 6
ORDER BY trips.trip_id; 
