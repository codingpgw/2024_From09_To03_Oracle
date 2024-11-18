--DROP INDEX idx_with_pay;

SELECT 'max_pay' c1,MAX(pay) FROM with_test1
UNION ALL
SELECT 'min_pay' c1,MIN(pay) FROM with_test1
UNION ALL
SELECT 'max_pay - min_pay' c1, (MAX(pay) - MIN(pay)) diff_pay FROM with_test1
;