SELECT
	hrs,
  member_casual,
	COUNT(hrs) AS counts
FROM (SELECT 
	*,
    HOUR(started_at) AS hrs
FROM Jul22) AS hour_data
GROUP BY hour_data.hrs, hour_data.member_casual
ORDER BY counts DESC;
