--SELECT DISTINCT deptno
--FROM emp
--;

SELECT deptno, count(*) AS count
FROM emp
GROUP BY deptno
;