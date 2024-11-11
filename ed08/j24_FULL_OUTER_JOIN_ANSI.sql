SELECT s.name "STU_NAME",
	   p.name "PROF_NAME"
  FROM student s FULL OUTER JOIN professor p
	ON s.profno = p.profno
;