--CREATE TABLE PW_DEFAULT(
--	no NUMBER(3,1) 	  DEFAULT 0,
--	name VARCHAR2(10) DEFAULT 'NO NAME',
--	hiredate DATE 	  DEFAULT SYSDATE
--);

--특정 컬럼에 입력
--INSERT INTO PW_DEFAULT (no) VALUES(1);

--DEFAULT 확인
select * from pw_default;

--SELECT * FROM v$reserved_words;