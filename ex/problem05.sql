SELECT ROWNUM,a.*
FROM(SELECT ROWNUM NO,
	   s.name "STU_NAME",
	   s.deptno1 DEPTNO1,
	   s.birthday BIRTHDAY,
	   d.dname "DEPT_NAME",
	   p.name "PROF_NAME"
  FROM student s,professor p,department d
 WHERE s.profno = p.profno
   AND p.deptno = d.deptno
   AND ROWNUM <= 10
ORDER BY s.deptno1
)a
;

--ANSI
SELECT ROWNUM,a.*
FROM(SELECT ROWNUM NO,
	   s.name "STU_NAME",
	   s.deptno1 DEPTNO1,
	   s.birthday BIRTHDAY,
	   d.dname "DEPT_NAME",
	   p.name "PROF_NAME"
  FROM student s JOIN professor p 
    ON s.profno = p.profno
    JOIN department d
   ON p.deptno = d.deptno
 WHERE ROWNUM <= 10
ORDER BY s.deptno1
)a
;