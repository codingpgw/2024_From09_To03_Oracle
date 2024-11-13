MERGE INTO professor8 t1
USING (SELECT &profno AS profno,
		      &name AS name,
			  &pay AS pay
		 FROM dual
	)t2
ON (t1.profno = t2.profno)
   WHEN MATCHED THEN
	UPDATE SET t1.pay = t2.pay
   WHEN NOT MATCHED THEN
    INSERT VALUES(t2.profno,t2.name,t2.pay)
;

--INSERT
--5001 James Bond  500
--UPDATE
-- 1001 Audie Murphy  800