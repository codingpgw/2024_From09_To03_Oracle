SELECT  deptno,
		CASE 
        WHEN JOB IS NULL AND DEPTNO IS NOT NULL THEN '�μ��� �Ѱ�'
        WHEN JOB IS NULL AND DEPTNO IS NULL THEN '��ü �Ѱ�'
        ELSE JOB
    END AS JOB, 
	AVG(NVL(sal,0)) AS "AVG_SAL",COUNT(*) CNT_EMP
  FROM emp
GROUP BY ROLLUP(deptno,job)
;