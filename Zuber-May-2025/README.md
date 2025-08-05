## 🛺 The Zuber Database
### 📋Project Description
Zuber, a new ride-sharing company launching in Chicago, aims to understand passenger preferences and evaluate how external factors influence ride patterns. I plan to achieve this by performing a series of analytical tasks using SQL queries.

## 🗂️ Database Schema
The Zuber database contains 4 different datasets:

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

---

## 📊 SQL Tasks

### 1. Company Ride Counts (Nov 15–16, 2017)
- Retrieve the number of taxi rides per company.
- Filter by date: **November 15–16, 2017**
- Sort by `trips_amount` in **descending** order.
<img width="924" height="368" alt="image" src="https://github.com/user-attachments/assets/526cb433-0bb5-4f04-b589-7c4826694756" />

---

### 2. Rides by "Yellow" or "Blue" Taxi Companies (Nov 1–7, 2017)
- Count the number of rides for companies whose names contain **"Yellow"** or **"Blue"**.
- Filter by date: **November 1–7, 2017**
- Group results by `company_name`.
<img width="834" height="247" alt="image" src="https://github.com/user-attachments/assets/b1bee4a2-20a9-4215-90d1-791a31af9bd5" />

---

### 3. Top Companies vs. Others (Nov 1–7, 2017)
- Identify the number of rides for:
  - **Flash Cab**
  - **Taxi Affiliation Services**
  - Group all **other companies** under `"Other"`
- Filter by date: **November 1–7, 2017**
- Group by company name and sort by `trips_amount` in **descending** order.
<img width="741" height="224" alt="image" src="https://github.com/user-attachments/assets/948ea7de-bf49-4e64-91ba-d2235ed5ab3b" />

---

### 4. Neighborhood Identifiers
- Retrieve the identifiers of the **O'Hare** and **Loop** neighborhoods from the `neighborhoods` table.
<img width="672" height="178" alt="image" src="https://github.com/user-attachments/assets/a9d3070c-c971-4db8-870a-07e47eecde5e" />

---

### 5. Hourly Weather Conditions Classification
- From the `weather_records` table, classify weather as:
  - `"Bad"` if the `description` contains `"rain"` or `"storm"`
  - `"Good"` otherwise
- Use the `CASE` operator for classification.
<img width="747" height="250" alt="image" src="https://github.com/user-attachments/assets/cfbe8185-6dca-4adf-bf23-0dcead257ebc" />

---

### 6. Loop to O'Hare Rides on Saturdays with Weather Info
- From the `trips` table, retrieve rides that:
  - **Start in the Loop** (`pickup_location_id = 50`)
  - **End at O’Hare** (`dropoff_location_id = 63`)
  - Occur on **Saturdays**
- Join with weather data using the classification from Task 5.
- Exclude rides with **missing weather data**.
<img width="798" height="294" alt="image" src="https://github.com/user-attachments/assets/6a8469d8-c568-46a0-ab34-be18e3e1e46d" />


## ✅ Outcome
This analysis will help Zuber:
- Understand company popularity trends
- Assess customer behavior in relation to weather and time
- Make informed operational decisions before launching in Chicago
