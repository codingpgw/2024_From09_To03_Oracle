ALTER TABLE new_emp2
ADD CONSTRAINT emp2_no_fk FOREIGN KEY(no)
REFERENCES emp2(empno)
;