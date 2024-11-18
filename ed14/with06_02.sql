--SELECT COUNT(*)
--	FROM with_test1
--	WHERE pay < (
--	SELECT MIN(pay)
--	  FROM with_test1
--	 WHERE no BETWEEN 120000 AND 130000
--);

WITH a AS(
	SELECT /*+ INDEX(w idx_with_pay) */ MIN(pay) min_pay
      FROM with_test1 w
     WHERE no BETWEEN 120000 AND 130000
	   AND ROWNUM = 1
)
SELECT COUNT(*)
  FROM with_test1 t1, a
 WHERE t1.pay < a.min_pay
 ;