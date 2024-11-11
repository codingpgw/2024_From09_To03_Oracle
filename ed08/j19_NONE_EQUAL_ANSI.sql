SELECT s.name,sco.total,h.grade
  FROM score sco JOIN student s
	ON sco.studno = s.studno
  JOIN hakjum h
    ON sco.total >= h.min_point 
   AND sco.total <= h.max_point
;