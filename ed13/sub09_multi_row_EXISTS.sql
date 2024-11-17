SELECT d.dname "DNAME",
	   e.name "NAME",
	   TO_CHAR(e.pay,'$999,999,999') "SALARY"
  FROM emp2 e JOIN dept2 d
    ON e.deptno = d.dcode
 WHERE e.pay < ALL(
	SELECT AVG(pay)
	  FROM emp2
	GROUP BY deptno
 )
 ORDER BY 3
 ;