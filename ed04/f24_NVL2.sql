SELECT empno, ename, sal,comm,
	   NVL2(comm,sal+comm,sal+NVL(comm,0)) "NVL2"
  FROM emp
 WHERE deptno = 30;
  