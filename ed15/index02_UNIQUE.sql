--col dname for a28
--col area for a30
--SELECT *
--  FROM dept2
--;

--CREATE UNIQUE INDEX idx_dept2_dname
--ON dept2(dname);

--�ߺ� �� �׽�Ʈ
--INSERT INTO dept2 Values(9100,'PCWK4',1006,'Seoul Branch Office');
--INSERT INTO dept2 Values(9101,'PCWK4',1006,'Seoul Branch Office');

--�ε��� ���
--col dname for a28
--col area for a30
--SELECT *
--  FROM dept2
-- WHERE dname > '0'
--;

EXPLAIN PLAN FOR
SELECT *
  FROM dept2
 WHERE dname > '0'
;