--emp ���̺��� ��ȸ�Ͽ� ���� �μ� �� job�� �޿� ����
SELECT empno,
	   ename,
	   deptno,
	   job,
	   sal,
	   RANK() OVER(PARTITION BY deptno,job ORDER BY sal DESC) AS RANK_DESC
  FROM emp
;