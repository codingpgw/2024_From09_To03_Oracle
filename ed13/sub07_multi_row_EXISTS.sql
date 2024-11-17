col position for a24
SELECT name,position,
	   TO_CHAR(pay,'$999,999,999') "SALARY"
  FROM emp2 
 WHERE pay > ANY(
	SELECT pay
	  FROM emp2
	 WHERE position = 'Section head'
 )
 ORDER BY position,pay
 ;