SELECT ename, 
	   empno,
	   sal
  FROM emp
 WHERE ename = UPPER('scott')
;