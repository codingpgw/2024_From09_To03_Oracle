-- �������� ���� �� ����
--�ҹ��ڰ� �����ؼ� 2�� �̻�
SELECT * 
  FROM t_reg
 WHERE REGEXP_LIKE(text,'[a-z]{2}')
 ;