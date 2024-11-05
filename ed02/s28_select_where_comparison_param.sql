SELECT empno,
       ename,
	   sal,
	   comm
  FROM emp
 WHERE empno = &empno
;