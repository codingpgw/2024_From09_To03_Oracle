SELECT profno, name,
	   TO_CHAR((pay*12+NVL(bonus,0)),'99,999') "total",
	   bonus,pay
  FROM professor
 WHERE deptno = 201
;