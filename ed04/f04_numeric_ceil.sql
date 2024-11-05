SELECT ROWNUM,
	   RANK() OVER(ORDER BY deptno),
	   CEIL(ROWNUM/3) "TEAM_NO", 
	   ename
  FROM emp
 ;