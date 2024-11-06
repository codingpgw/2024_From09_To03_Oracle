--SELECT deptno,
--	   ename
--  FROM emp
--ORDER BY deptno
--;
col AGG FOR A50
SELECT deptno,
	   LISTAGG(ename,',') WITHIN GROUP(ORDER BY ename) "AGG"
  FROM emp
GROUP BY deptno
;