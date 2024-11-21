col "Name And Position" for a120
SELECT LPAD((e.name||'-'||d.dname||'-'||NVL(e.position,'Team-Worker')),LEVEL*27,'-') "Name And Position"
  FROM emp2 e JOIN dept2 d
    ON e.deptno = d.dcode
START WITH pempno IS NULL
CONNECT BY prior e.empno = e.pempno
;

SELECT LENGTH('Kurt Russell-President-Boss')
  FROM dual
;