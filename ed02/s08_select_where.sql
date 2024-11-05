COL ename FOR A8
COL sal FOR $9,999
SELECT empno,
	ename,
	sal
FROM emp
WHERE sal <= 1000
;