--문자 비교 연산자
SELECT empno,
	   ename,
	   sal
  FROM emp
 WHERE ename < 'W'
ORDER BY ename
;