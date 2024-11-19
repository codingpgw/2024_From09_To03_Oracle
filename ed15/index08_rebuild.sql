--step 1. �׽�Ʈ�� ���̺� i_test�� �����ϰ� �����͸� ���� �� �ε����� �����Ѵ�.
--CREATE TABLE i_test(
--	no NUMBER
--);

--BEGIN
--	FOR i IN 1..10000 LOOP
--		INSERT INTO i_test VALUES(i);
--	END LOOP;
--	COMMIT;
--END;
--/

--�ε��� ����
--CREATE INDEX IDX_ITEST_NO
--ON i_test(no);

--step 2. �ε����� ���¸� ��ȸ�Ѵ�.
--�ε��� �������
--ANALYZE INDEX IDX_ITEST_NO VALIDATE STRUCTURE;
--
-- SELECT (DEL_LF_ROWS_LEN/LF_ROWS_LEN)*100 "BALANCE"
--   FROM INDEX_STATS
--  WHERE name = 'IDX_ITEST_NO';


--step 3. ���̺��� 10000���� ������ �� 4000�� ���� �� �ε��� ���� ��ȸ
--SELECT COUNT(*)
--  FROM i_test
-- WHERE no BETWEEN 1 AND 4000;
--DELETE FROM i_test
--WHERE no BETWEEN 1 AND 4000;

--SELECT COUNT(*)
--  FROM i_test;
  
--COMMIT;
--ANALYZE INDEX IDX_ITEST_NO VALIDATE STRUCTURE;
-- SELECT (DEL_LF_ROWS_LEN/LF_ROWS_LEN)*100 "BALANCE"
--   FROM INDEX_STATS
--  WHERE name = 'IDX_ITEST_NO';
  
--step 4. rebuild
ALTER INDEX IDX_ITEST_NO rebuild;
ANALYZE INDEX IDX_ITEST_NO VALIDATE STRUCTURE;
SELECT (DEL_LF_ROWS_LEN/LF_ROWS_LEN)*100 "BALANCE"
  FROM INDEX_STATS
 WHERE name = 'IDX_ITEST_NO';