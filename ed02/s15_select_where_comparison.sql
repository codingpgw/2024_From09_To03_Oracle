-- BETWEEN A AND B
--EMP 테이블에서 SAL 2000과 3000 사이인 사람들
--empno, ename, sal을 출력
SELECT empno,
	   ename,
	   sal
  FROM emp
 WHERE sal BETWEEN 2000 AND 3000
ORDER BY sal
;