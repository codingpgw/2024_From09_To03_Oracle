col BE_POSITION for a25
SELECT e.name,
	   TRUNC(TO_NUMBER(SYSDATE - TO_DATE(e.birthday))/365,0) AGE,
	   e.position,
	   (SELECT p.position
		  FROM p_grade p
		 WHERE TRUNC((SYSDATE - TO_DATE(e.birthday)) / 365) BETWEEN p.s_age AND p.e_age
		) AS BE_POSITION
  FROM emp2 e,p_grade p
 WHERE e.position = p.position(+)
 ORDER BY BE_POSITION NULLS FIRST
;