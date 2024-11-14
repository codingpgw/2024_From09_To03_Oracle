--@C:\app\gy\product\18.0.0\dbhomeXE\rdbms\admin\utlexcpt.sql

--CREATE TABLE scott.tt550(
--	no NUMBER CONSTRAINT tt550_no_ck CHECK(no > 5)
--);

--ALTER TABLE scott.tt550
--DISABLE CONSTRAINT tt550_no_ck;

--INSERT INTO scott.tt550 VALUES(1);
--INSERT INTO scott.tt550 VALUES(6);
--INSERT INTO scott.tt550 VALUES(7);

--SELECT * FROM scott.tt550;

--ALTER TABLE scott.tt550
--ENABLE VALIDATE CONSTRAINT tt550_no_ck
--EXCEPTIONS INTO sys.exceptions;

--col table_name for a20 
--SELECT row_id,
--	   table_name
--  FROM exceptions
--;

--SELECT rowid,no
--  FROM scott.tt550
-- WHERE rowid IN (SELECT row_id FROM exceptions);

--UPDATE scott.tt550
--   SET no = 8
-- WHERE rowid IN (SELECT row_id FROM exceptions);

--ALTER TABLE scott.tt550
--ENABLE VALIDATE CONSTRAINT tt550_no_ck
--EXCEPTIONS INTO sys.exceptions;

--SELECT * FROM scott.tt550;

INSERT INTO scott.tt550 VALUES(1);
