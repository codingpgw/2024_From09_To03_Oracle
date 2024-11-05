SELECT AVG(NVL(sal,0)),
	   VARIANCE(NVL(sal,0)),
	   POWER(VARIANCE(NVL(sal,0)),0.5),
	   STDDEV(NVL(sal,0))
  FROM emp
;