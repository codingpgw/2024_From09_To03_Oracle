col "Name And Position" for a75
SELECT e.empno,(e.name||'-'||d.dname||'-'||NVL(e.position,'Team-Worker')) "Name And Position",
	   (SELECT COUNT(*)
	      FROM emp2 e2
		 START WITH e2.empno = e.empno 
		 CONNECT BY PRIOR e2.empno = e2.pempno 
	   )-1 "COUNT"
  FROM emp2 e JOIN dept2 d
    ON e.deptno = d.dcode
START WITH pempno IS NULL
CONNECT BY prior e.empno = e.pempno
ORDER BY 3 DESC
;