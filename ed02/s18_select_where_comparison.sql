--IN(A,B,C) : A OR B OR C
SELECT ename,
	   empno,
	   deptno
  FROM emp
 WHERE deptno IN (10,20)
;