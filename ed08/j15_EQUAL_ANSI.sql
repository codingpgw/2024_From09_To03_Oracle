col "STU_NAME" for a20
col "PROF_NAME" for a20
EXPLAIN PLAN FOR
SELECT s.name "STU_NAME",
	   p.name "PROF_NAME"
  FROM student s JOIN professor p
	ON s.profno = p.profno
   AND s.deptno1 = 101
;