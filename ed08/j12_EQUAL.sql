col "STU_NAME" for a20
col "PROF_NAME" for a20
col "DEPT_NAME" for a35
SELECT s.name "STU_NAME",
	   p.name "PROF_NAME",
	   d.dname "DEPT_NAME"
  FROM student s,professor p,department d
 WHERE s.profno = p.profno
   AND p.deptno = d.deptno
;