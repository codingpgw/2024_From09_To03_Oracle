--SELECT year,
--	   month
--  FROM pw_date
--;
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
SELECT year,
	   MAX(DECODE(month,1, month,null)) m1 ,
	   MAX(DECODE(month,2, month,null)) m2 ,
	   MAX(DECODE(month,3, month,null)) m3 ,
	   MAX(DECODE(month,4, month,null)) m4 ,
	   MAX(DECODE(month,5, month,null)) m5 ,
	   MAX(DECODE(month,6, month,null)) m6 ,
	   MAX(DECODE(month,7, month,null)) m7 ,
	   MAX(DECODE(month,8, month,null)) m8 ,
	   MAX(DECODE(month,9, month,null)) m9 ,
	   MAX(DECODE(month,10,month,null)) m10,
	   MAX(DECODE(month,11,month,null)) m11,
	   MAX(DECODE(month,12,month,null)) m12
  FROM pw_date
GROUP BY year
;