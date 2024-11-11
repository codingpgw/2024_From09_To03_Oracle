SELECT s.name "STU_NAME",
	   p.name "PROF_NAME"
  FROM student s,professor p
 WHERE s.profno = p.profno(+)
;