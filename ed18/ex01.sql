CREATE OR REPLACE VIEW v_prof_dept2
AS
SELECT p.profno, p.name, d.dname
  FROM professor p, department d
 WHERE p.deptno = d.deptno
WITH READ ONLY
;

SELECT * FROM v_prof_dept2;