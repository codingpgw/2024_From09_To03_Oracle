--��ҹ��� ���� ���� �˻�
SELECT ename
  FROM emp
 WHERE REGEXP_LIKE(ename,'scott','i')
 ;