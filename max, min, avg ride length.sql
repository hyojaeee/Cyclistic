SELECT
	MAX(time_difference) AS max_trip,
    MIN(time_difference) AS min_trip,
    SEC_TO_TIME(AVG(TIME_TO_SEC(time_difference))) AS average_trip
FROM
	(SELECT
		started_at,
		ended_at,
		TIMEDIFF(ended_at, started_at) AS time_difference
	FROM Aug21) AS TD_start_end;
