SELECT s.name,sco.total,h.grade
  FROM score sco, student s, hakjum h
 WHERE sco.studno = s.studno
   AND sco.total BETWEEN h.min_point AND h.max_point
;