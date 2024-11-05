col name for a21
col tel for a18
SELECT name,tel,
	   CASE SUBSTR(tel,1,INSTR(tel,')')-1)
	    WHEN '02'  THEN 'SEOUL'
		WHEN '031' THEN 'GYEONGGI'
		WHEN '051' THEN 'BUSAN'
		WHEN '052' THEN 'ULSAN'
		WHEN '053' THEN 'DEAGU'
		WHEN '055' THEN 'GYEONGNAM'
				   ELSE 'ECT'
		END LOC
  FROM student
 WHERE deptno1 = 201
;