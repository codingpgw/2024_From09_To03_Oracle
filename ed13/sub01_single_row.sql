col name for a20
col dname for a34
SELECT s.name,
	   s.deptno1,
	   d.dname
  FROM student s, department d
 WHERE s.deptno1 = d.deptno
   AND s.deptno1 =(
	SELECT t1.deptno1
	  FROM student t1
	 WHERE t1.name = 'Anthony Hopkins'
)
 ;