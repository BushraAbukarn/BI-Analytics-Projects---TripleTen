## 🛺 The Zuber Database
### 📋Project Description
Zuber, a new ride-sharing company launching in Chicago, aims to understand passenger preferences and evaluate how external factors influence ride patterns. I plan to achieve this by performing a series of analytical tasks using SQL queries.

1. Print the company_name field. Find the number of taxi rides for each taxi company for November 15-16, 2017, name the resulting field trips_amount and print it, too. Sort the results by the trips_amount field in descending order. |
2. Find the number of rides for every taxi companies whose name contains the words "Yellow" or "Blue" for November 1-7, 2017. Name the resulting variable trips_amount. Group the results by the company_name field. |
3. For November 1-7, 2017, the most popular taxi companies were Flash Cab and Taxi Affiliation Services. Find the number of rides for these two companies and name the resulting variable trips_amount. Join the rides for all other companies in the group "Other." Group the data by taxi company names. Name the field with taxi company names company. Sort the result in descending order by trips_amount. |
4. Retrieve the identifiers of the O'Hare and Loop neighborhoods  from the neighborhoods table. |
5. For each hour, retrieve the weather condition records from the weather_records table. Using the CASE operator, break all hours into two groups: Bad if the description field contains the words rain or storm, and Good for others. Name the resulting field weather_conditions. The final table must include two fields: date and hour (ts) and weather_conditions. |
6. Retrieve from the trips table all the rides that started in the Loop (pickup_location_id: 50) on a Saturday and ended at O'Hare (dropoff_location_id: 63). Get the weather conditions for each ride. Use the method you applied in the previous task. Also, retrieve the duration of each ride. Ignore rides for which data on weather conditions is not available. |

## 🗂️ Database Schema
The Zuber Database

### Neighborhoods Table: data on city neighborhoods
- `neighborhood_id`: Unique identifier for each neighborhood
- `name`: Name of the neighborhood

### Cabs Table: data on taxis
- `cab_id`: Unique identifier for each cab (vehicle code)
- `vehicle_id`: The vehicle's technical ID
- `company_name`: The company that owns the vehicle

### Trips Table: data on rides
- `trip_id`: Unique identifier for each ride (ride code)
- `cab_id`: Code of the vehicle operating the ride
- `start_ts`: Date and time of the beginning of the ride (rounded to the hour)
- `end_ts`: Date and time of the end of the ride (rounded to the hour)
- `duration_seconds`: Ride duration in seconds
- `distance_miles`: Ride distance in miles
- `pickup_location_id`: Pickup neighborhood code
- `dropoff_location_id`: Dropoff neighborhood code

### Weather Records Table: data on weather
- `record_id`: Weather record code
- `ts`: Record date and time (rounded to the hour)
- `temperature`: Temperature when the record was taken
- `description`: Brief description of weather conditions, e.g. "light rain" or "scattered clouds"
