SELECT name,
	   pay,
	   bonus,
	   TO_CHAR((pay*12)+NVL(bonus,0),'L99,999') "annual_sal"
  FROM professor
 WHERE deptno = 201
 ;