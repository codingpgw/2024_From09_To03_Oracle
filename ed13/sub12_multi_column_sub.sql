SELECT name,position,
	   TO_CHAR(pay,'$999,999,999') "SALARY"
  FROM emp2
 WHERE (position,pay) IN (
	SELECT position,MAX(pay)
	  FROM emp2
	GROUP BY position
 )
 ORDER BY pay
 ;