CREATE TABLE vc01 (
	empid NUMBER PRIMARY KEY,
	ename VARCHAR2(50),
	salary NUMBER(10,2),
	tax NUMBER(10,2) GENERATED ALWAYS AS (salary * 0.1) virtual
);