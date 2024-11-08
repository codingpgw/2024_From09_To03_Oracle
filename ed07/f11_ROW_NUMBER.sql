SELECT empno,
	   ename,
	   sal,
	   ROW_NUMBER() OVER(ORDER BY sal) AS RANK_ASC,
	   ROWID
  FROM emp
;