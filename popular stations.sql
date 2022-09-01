SELECT
	start_station_name,
	COUNT(start_station_name)
FROM Apr22
GROUP BY 1
ORDER BY 2 DESC;

SELECT
	end_station_name,
	COUNT(end_station_name)
FROM Apr22
GROUP BY 1
ORDER BY 2 DESC;
