CREATE TABLE order_pw(
	order_id NUMBER generated always as IDENTITY,
	order_date DATE DEFAULT SYSDATE,
	cust_id NUMBER
);

INSERT INTO order_pw (cust_id) VALUES(1);
INSERT INTO order_pw (cust_id) VALUES(2);
SELECT * FROM order_pw;