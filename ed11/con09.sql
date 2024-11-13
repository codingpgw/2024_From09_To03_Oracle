--c_test1(자식), c_test2(부모)
--c_test2 no에 uk,pk 없음
ALTER TABLE c_test2
ADD CONSTRAINT ctest2_deptno_uk;

ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno) 
REFERENCES c_test2(no)
ON DELETE CASCADE;
--3행에 오류:
--ORA-02270: 이 열목록에 대해 일치하는 고유 또는 기본 키가 없습니다.

