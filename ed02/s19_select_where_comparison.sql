--급여가 1로 시작하고 있는 사원정보
SELECT ename,
	   empno,
	   sal
  FROM emp
 WHERE sal LIKE '1%'
ORDER BY sal
;