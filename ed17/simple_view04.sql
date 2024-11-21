--WITH CHECK OPTION

--INSERT INTO p_table VALUES(3,'이상무_03');
--INSERT INTO p_table VALUES(5,'이상무_05');
--COMMIT;
--ROLLBACK;
--SELECT *
--  FROM p_table
--;

--CREATE VIEW view3
--AS
--SELECT no,name
--  FROM p_table
-- WHERE no = 3
-- WITH CHECK OPTION;

--SELECT * FROM view3;

--UPDATE view3 
--   SET no = 33
-- WHERE name = '이상무_03'
-- ;

--UPDATE view3 
--   SET name = '이상무_033'
-- WHERE no = 3
-- ;

--SELECT * FROM view3;

DELETE FROM view3 WHERE no = 3;
SELECT * FROM view3;