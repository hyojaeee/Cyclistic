SELECT
	wkday,
  member_casual,
	COUNT(wkday) AS counts
FROM (SELECT
	*,
	WEEKDAY(started_at) AS wkday
FROM Jul22) AS weekday_data
GROUP BY weekday_data.wkday, weekday_data.member_casual
ORDER BY counts DESC;
-- 0: Monday, 6: Sunday
