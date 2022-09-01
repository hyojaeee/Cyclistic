SELECT
	rideable_type,
  member_casual,
  COUNT(rideable_type)
FROM Jul22
GROUP BY rideable_type, member_casual;
