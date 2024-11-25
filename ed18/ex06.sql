col name for a25
SELECT num,a.profno,a.name,a."SUM(PAY)",a."ROUND(AVG(pay),1)"
  FROM(
	SELECT ROWNUM NUM,CEIL(ROWNUM/3) grp,t1.profno,t1.name,
		t1.pay "SUM(PAY)",
		t1.pay "ROUND(AVG(pay),1)"
	FROM(
		SELECT deptno,profno,name,pay	
		FROM professor
		ORDER BY profno
	)t1
	UNION ALL
	SELECT NULL num, grp, NULL profno, NULL name, SUM(pay),ROUND(AVG(PAY),1)
	FROM(
		SELECT ROWNUM NUM,CEIL(ROWNUM/3) grp,t1.*
		FROM (
			SELECT deptno,profno,name,pay	
			FROM professor
			ORDER BY profno
	)t1
	)tt1
	GROUP BY grp
	ORDER BY grp,num
)a
;