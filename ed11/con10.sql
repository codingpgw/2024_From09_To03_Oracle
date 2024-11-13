INSERT INTO c_test2 VALUES(10,'AAA');
INSERT INTO c_test2 VALUES(20,'BBB');
INSERT INTO c_test2 VALUES(30,'BBB');


INSERT INTO c_test1 VALUES(10,'apple',10);
INSERT INTO c_test1 VALUES(20,'banana',20);
INSERT INTO c_test1 VALUES(30,'cherry',30);

col name for a15
SELECT *
  FROM c_test1 t1, c_test2 t2
 WHERE t1.deptno = t2.no;