SELECT deptno, MAX(sal)
  FROM emp
GROUP BY deptno
;

--
SELECT t1.deptno,t1.max_sal,t2.dname
  FROM (SELECT deptno, MAX(sal) max_sal
		  FROM emp
	  GROUP BY deptno)t1
  JOIN dept t2
    ON t1.deptno = t2.deptno
ORDER BY 1
;