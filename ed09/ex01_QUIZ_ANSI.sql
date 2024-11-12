col "STU_NAME" for a18
col "DEPTNO1" for 9999
col "DEPT_NAME" for a35
SELECT s.name "STU_NAME",
	   s.deptno1 "DEPTNO1",
	   d.dname "DEPT_NAME"
  FROM student s INNER JOIN department d
	ON s.deptno1 = d.deptno
;