--검색 조건이 두 개 이상인 경우 : AND, OR
--AND가 우선 순위가 높다. ( )를 통해 우선 순위 조정 가능
SELECT empno,
	   ename,
	   hiredate,
	   sal,
	   comm
  FROM emp
 WHERE sal > 1000
   AND comm < 1000 
   OR comm IS NULL
;