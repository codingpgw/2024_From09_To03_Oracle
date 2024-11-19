--4.1 인덱스를 활용하여 정렬한 효과를 내는 방법

--step 1. new_emp4 테이블 생성, 데이터 입력
--CREATE TABLE new_emp4(
--	no NUMBER,
--	name VARCHAR2(10),
--	sal NUMBER
--);

--INSERT INTO new_emp4 VALUES(1000,'SMITH',300);
--INSERT INTO new_emp4 VALUES(1001,'ALLEN',200);
--INSERT INTO new_emp4 VALUES(1002,'KING',400);
--INSERT INTO new_emp4 VALUES(1003,'BLAKE',220);
--INSERT INTO new_emp4 VALUES(1004,'JAMES',620);
--INSERT INTO new_emp4 VALUES(1005,'MILLER',810);
--SELECT * FROM new_emp4;
--COMMIT;
--step 2. name 컬럼에 인덱스 생성
--CREATE INDEX idx_emp4_name
--ON new_emp4(name ASC);
--step 3. name 인덱스 미사용
--SELECT * FROM new_emp4;
--step 4. name 인덱스 사용
SELECT * 
  FROM new_emp4
 WHERE name > 'A';