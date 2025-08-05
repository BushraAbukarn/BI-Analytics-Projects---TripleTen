**1** 
SELECT cabs.company_name AS company_name, COUNT(cabs.company_name) AS trips_amount
FROM cabs INNER JOIN trips ON cabs.cab_id = trips.cab_id 
WHERE trips.start_ts::date BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY cabs.company_name
ORDER BY trips_amount DESC;

**2** 
SELECT cabs.company_name, COUNT(cabs.company_name) AS trips_amount
FROM cabs 
INNER JOIN trips ON trips.cab_id = cabs.cab_id 
WHERE (cabs.company_name LIKE '%Yellow%' OR cabs.company_name LIKE '%Blue%') AND 
trips.start_ts::date BETWEEN '2017-11-01' AND '2017-11-07' 
GROUP BY cabs.company_name; 

**3**
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


**4** 
SELECT name, neighborhood_id FROM neighborhoods 
WHERE name IN ('O''Hare', 'Loop');


**5**
SELECT 
      ts, 
      CASE WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad' 
           ELSE 'Good'
      END AS weather_condtions
FROM 
weather_records;


**6**
SELECT trips.start_ts, T.weather_condition, trips.duration_seconds 
FROM trips INNER JOIN (SELECT ts, 
    CASE WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad' ELSE 'Good'
    END AS weather_condition FROM weather_records) T ON T.ts = trips.start_ts 
WHERE trips.pickup_location_id = 50 AND 
      trips.dropoff_location_id = 63 AND  
      EXTRACT(DOW FROM trips.start_ts) = 6
ORDER BY trips.trip_id; 
