--날짜 비교
SELECT empno,
	   ename,
	   hiredate
  FROM emp 
 WHERE hiredate > '81/12/25'
ORDER BY hiredate
;