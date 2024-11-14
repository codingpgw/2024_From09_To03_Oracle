ALTER TABLE tcons
ADD CONSTRAINT tcons_name_fk FOREIGN KEY(name)
REFERENCES emp2(name)
; 