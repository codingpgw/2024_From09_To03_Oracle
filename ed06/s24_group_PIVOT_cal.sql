--SELECT COUNT(*)
--  FROM pw_calendar
--;
--SELECT *
--  FROM pw_calendar
--;
SELECT "SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"
  FROM(SELECT weekno,dayno,week
		 FROM pw_calendar
		WHERE year = &year
		  AND month = &month
)
PIVOT(
	MIN(dayno)
	FOR week IN( 'SUN' AS "SUN"
	            ,'MON' AS "MON"
	            ,'TUE' AS "TUE"
	            ,'WED' AS "WED"
	            ,'THU' AS "THU"
	            ,'FRI' AS "FRI"
	            ,'SAT' AS "SAT"
	)
)
ORDER BY weekno
;