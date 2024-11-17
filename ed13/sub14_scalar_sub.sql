--col DNAME for a30
--SELECT e.name,
--	   (SELECT dname FROM dept2 d WHERE e.deptno = d.dcode)  "DNAME"
--  FROM emp2 e
--;

SELECT e.name,d.dname 
  FROM emp2 e,dept2 d
 WHERE e.deptno = d.dcode
 ;