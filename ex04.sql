SELECT grade,name,height,avg_height
  FROM(
	SELECT grade,AVG(height) avg_height
	  FROM student
	GROUP BY grade
)s NATURAL JOIN student s1
 WHERE s1.height > s.avg_height
ORDER BY grade
;

SELECT s1.grade,s1.name,s1.height,s.avg_height
  FROM(
	SELECT grade,AVG(height) avg_height
	  FROM student
	GROUP BY grade
)s JOIN student s1
    ON s1.grade = s.grade
 WHERE s1.height > s.avg_height
ORDER BY s1.grade
;