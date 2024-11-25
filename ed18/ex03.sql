col name for a24
SELECT d.dname,s.max_height,s1.name,s1.height
  FROM(
	SELECT deptno1,MAX(height) max_height
	  FROM student
	GROUP BY deptno1
)s JOIN department d
	ON s.deptno1 = d.deptno
   JOIN student s1
    ON d.deptno = s1.deptno1
 WHERE s1.height = s.max_height
;

--±³¼ö´Ô ¹æ½Ä
SELECT a.dname,a.max_height,b.name,b.height
  FROM(
	SELECT t2.deptno,t2.dname,MAX(t1.height) max_height
	  FROM student t1 JOIN department t2
		ON t1.deptno1 = t2.deptno
	GROUP BY t2.deptno,t2.dname
)a JOIN student b
    ON a.deptno = b.deptno1
	AND a.max_height = b.height
;