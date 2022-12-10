# Analysing the gender representation in annual members:

SELECT COUNT(*), gender
FROM `molten-topic-368407.CYCLYSTIC.trips_on_2016`
WHERE member_casual='member'
GROUP BY gender

# Stations which are more popular among casual riders:

SELECT COUNT(*) AS number_of_rides, start_station_name, end_station_name
FROM `molten-topic-368407.CYCLYSTIC.trips_on_2016`
WHERE  member_casual ='casual'
GROUP BY start_station_name, end_station_name
ORDER BY Count(*) desc
LIMIT 100

# Number of rides and average ride length of casual vs actual members

SELECT COUNT(*) as number_of_rides, CAST(AVG(ride_length) as int64) as avg_ride_length, member_casual
FROM `molten-topic-368407.CYCLYSTIC.trips_on_2016`
GROUP BY member_casual