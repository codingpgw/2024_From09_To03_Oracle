--ORACLE OUTER JOIN
--emp ���̺�� �μ� ���̺��� �μ������� ��� �����ְ�,�μ� ��ȣ�� 20�� ����� �����ȣ, �̸�, �޿��� ���
col ename for a10
SELECT e.*,
	   d.dname
  FROM emp e, dept d
 WHERE e.deptno(+) = d.deptno
   AND e.deptno(+) = 20
;