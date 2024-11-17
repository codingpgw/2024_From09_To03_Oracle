col PROF_NAME for a20
col DEPT_NAME for a32
SELECT p.name "PROF_NAME",
	   TO_CHAR(p.hiredate,'YYYY-MM-DD')"HIREDATE",
	   d.dname "DEPT_NAME"
  FROM professor p,department d
 WHERE p.deptno = d.deptno
   AND hiredate > (
		SELECT hiredate
		  FROM professor t1
		 WHERE name = 'Meg Ryan'
);