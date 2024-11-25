col DNAME for a35
SELECT d.dname DNAME,s.max_height,s.max_weight
  FROM (
	SELECT deptno1,
		   MAX(height) max_height,
		   MAX(weight) max_weight
	  FROM student 
   GROUP BY deptno1
)s JOIN department d
    ON s.deptno1 = d.deptno
;