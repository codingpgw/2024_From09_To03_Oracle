--c_test1(�ڽ�), c_test2(�θ�)
--c_test2 no�� uk,pk ����
ALTER TABLE c_test2
ADD CONSTRAINT ctest2_deptno_uk;

ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno) 
REFERENCES c_test2(no)
ON DELETE CASCADE;
--3�࿡ ����:
--ORA-02270: �� ����Ͽ� ���� ��ġ�ϴ� ���� �Ǵ� �⺻ Ű�� �����ϴ�.

