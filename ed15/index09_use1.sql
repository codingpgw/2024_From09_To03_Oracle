--4.1 �ε����� Ȱ���Ͽ� ������ ȿ���� ���� ���

--step 1. new_emp4 ���̺� ����, ������ �Է�
--CREATE TABLE new_emp4(
--	no NUMBER,
--	name VARCHAR2(10),
--	sal NUMBER
--);

--INSERT INTO new_emp4 VALUES(1000,'SMITH',300);
--INSERT INTO new_emp4 VALUES(1001,'ALLEN',200);
--INSERT INTO new_emp4 VALUES(1002,'KING',400);
--INSERT INTO new_emp4 VALUES(1003,'BLAKE',220);
--INSERT INTO new_emp4 VALUES(1004,'JAMES',620);
--INSERT INTO new_emp4 VALUES(1005,'MILLER',810);
--SELECT * FROM new_emp4;
--COMMIT;
--step 2. name �÷��� �ε��� ����
--CREATE INDEX idx_emp4_name
--ON new_emp4(name ASC);
--step 3. name �ε��� �̻��
--SELECT * FROM new_emp4;
--step 4. name �ε��� ���
SELECT * 
  FROM new_emp4
 WHERE name > 'A';