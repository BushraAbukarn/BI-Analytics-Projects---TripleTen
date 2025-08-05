## 🛺 The Zuber Database
### 📋Project Description
This project involves exploratory data analysis using a PostgreSQL database containing information on taxi rides in Chicago. The database includes details on rides, cabs, weather, and city neighborhoods.


## 🗂️ Database Schema
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
