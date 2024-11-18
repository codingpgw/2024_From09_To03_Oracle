--CREATE INDEX idx_with_no ON with_test1(no);
SELECT COUNT(*)
  FROM with_test1
 WHERE pay < (
	SELECT MIN(pay)
	  FROM with_test1
	 WHERE no BETWEEN 120000 AND 130000
);


SELECT COUNT(*)
  FROM with_test1
 WHERE pay < ALL(
	SELECT /*+ INDEX(w idx_with_no) */ pay
	  FROM with_test1 w
	 WHERE no BETWEEN 120000 AND 130000
);