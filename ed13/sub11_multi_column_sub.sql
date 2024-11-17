SELECT p.profno "PROFNO",
	   p.name "PROF_NAME",
	   TO_CHAR(p.hiredate,'YYYY-MM-DD') "HIREDATE",
	   d.dname "DEPT_NAME"
  FROM professor p JOIN department d
    ON p.deptno = d.deptno
 WHERE (p.deptno,p.hiredate) IN (
	SELECT deptno,MIN(hiredate)
	  FROM professor
	GROUP BY deptno
)
ORDER BY 3
;