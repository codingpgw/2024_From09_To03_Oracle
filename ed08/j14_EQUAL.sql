col "STU_NAME" for a20
col "PROF_NAME" for a20
SELECT s.name "STU_NAME",
	   p.name "PROF_NAME"
  FROM student s,professor p
 WHERE s.profno = p.profno
   AND s.deptno1 = 101
;