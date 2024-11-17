--IN VS EXISTS
SELECT *
  FROM dept
 WHERE EXISTS (
	SELECT deptno
	  FROM dept
	 WHERE deptno = &deptno
 );