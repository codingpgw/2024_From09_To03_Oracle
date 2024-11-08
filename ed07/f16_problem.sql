SELECT MAX(NVL(sal,0)+NVL(comm,0)) "MAX",
	   MIN(NVL(sal,0)+NVL(comm,0)) "MIN",
	   ROUND(AVG(NVL(sal,0)+NVL(comm,0)),1) "AVG" 
  FROM emp
;

SELECT MAX(tot_sal) AS "MAX", MIN(tot_sal) "MIN", ROUND(AVG(tot_sal),1) "AVG"
  FROM(
	SELECT NVL(sal,0)+NVL(comm,0) tot_sal
	  FROM emp
)
;