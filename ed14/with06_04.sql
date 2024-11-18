--SELECT 'max_pay' c1,MAX(pay) FROM with_test1
--UNION ALL
--SELECT 'min_pay' c1,MIN(pay) FROM with_test1
--UNION ALL
--SELECT 'max_pay - min_pay' c1, (MAX(pay) - MIN(pay)) diff_pay FROM with_test1
--;

WITH sub_pay AS (
	SELECT MAX(pay) max_pay,
		   MIN(pay) min_pay
	  FROM with_test1
)
SELECT 'max_pay' c1,max_pay FROM sub_pay
UNION ALL
SELECT 'min_pay' c1,min_pay FROM sub_pay
UNION ALL
SELECT 'max_pay - min_pay' c1,(max_pay - min_pay) diff_pay FROM sub_pay
;