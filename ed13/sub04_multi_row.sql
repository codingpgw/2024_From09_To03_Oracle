SELECT empno,name,deptno
  FROM emp2 
 WHERE deptno IN(
	SELECT dcode
	  FROM dept2 
	 WHERE area = 'Pohang Main Office'
 )
;