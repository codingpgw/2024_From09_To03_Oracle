--
SELECT empno,
	   ename,
	   comm
  FROM emp
 WHERE deptno IN(20,30)
   AND comm IS NULL 
;