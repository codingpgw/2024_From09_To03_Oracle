WITH a AS(
	SELECT /*+ index_desc( w idx_with_pay ) */ pay
	  FROM with_test1 w
	 WHERE pay > 0
	   AND ROWNUM = 1
),
b AS(
	SELECT /*+ index( w idx_with_pay ) */ pay
	  FROM with_test1 w
	 WHERE pay > 0
	   AND ROWNUM = 1
)
SELECT a.pay - b.pay
  FROM a,b
;

