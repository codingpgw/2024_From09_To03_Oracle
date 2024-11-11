col name for a20
SELECT s.name,p.name
  FROM student s JOIN professor p
	ON s.profno = p.profno
 ;