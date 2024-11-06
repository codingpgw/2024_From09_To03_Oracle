col m1  for 99
col m2  for 99
col m3  for 99
col m4  for 99
col m5  for 99
col m6  for 99
col m7  for 99
col m8  for 99
col m9  for 99
col m10 for 99
col m11 for 99
col m12 for 99
SELECT *
  FROM ( SELECT year,month
		   FROM pw_date
  )
  PIVOT(
	MAX(month)
	FOR month IN ( 1  AS m1 
	              ,2  AS m2 
	              ,3  AS m3 
	              ,4  AS m4 
	              ,5  AS m5 
	              ,6  AS m6 
	              ,7  AS m7 
	              ,8  AS m8 
	              ,9  AS m9 
	              ,10 AS m10
	              ,11 AS m11
	              ,12 AS m12
	)
  )
;