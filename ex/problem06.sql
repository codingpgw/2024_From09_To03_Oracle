SELECT s.name "STUD_NAME",
	   sco.total TOTAL,
	   h.grade GRADE,
	   p.name PROF_NAME
  FROM student s,score sco,hakjum h,professor p
 WHERE sco.studno = s.studno
   AND s.profno = p.profno(+)
   AND sco.total BETWEEN h.min_point AND h.max_point
;

--ANSI
SELECT s.name "STUD_NAME",
	   sco.total TOTAL,
	   h.grade GRADE,
	   p.name PROF_NAME
  FROM student s JOIN score sco
    ON sco.studno = s.studno
  JOIN hakjum h
    ON sco.total BETWEEN h.min_point AND h.max_point
LEFT OUTER JOIN professor p
    ON s.profno = p.profno
;