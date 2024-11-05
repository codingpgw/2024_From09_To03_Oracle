SELECT ename,
	   REPLACE(ename,SUBSTR(ename,3,2),'--') "replace"
  FROM emp 
 WHERE deptno = 20;