col "STU_NAME" for a20
col "PROF_NAME" for a20
col "DEPT_NAME" for a35
SELECT s.name "STU_NAME",
	   p.name "PROF_NAME",
	   d.dname "DEPT_NAME"
  FROM student s JOIN professor p
	ON s.profno = p.profno
	JOIN department d
    ON S.deptno1 = d.deptno
;