SELECT ename,
	   LENGTHB('가'),
	   LENGTH(ename),
	   LENGTHB(ename)
  FROM emp
 WHERE deptno = 20
;