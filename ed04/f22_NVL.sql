SELECT ename,
	   comm,
	   NVL(comm,0) "NVL_0",
	   NVL(comm,777) "NVL_1"
  FROM emp;