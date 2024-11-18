--index »ý¼º
--CREATE INDEX idx_with_pay ON with_test1(pay);

SELECT MAX(pay) - MIN(pay)
  FROM with_test1
 WHERE pay > 0
;