col "Name And Position" for a120
SELECT LPAD((e.name||'-'||d.dname||'-'||NVL(e.position,'Team-Worker')),LEVEL*27,'-') "Name And Position"
  FROM emp2 e JOIN dept2 d
    ON e.deptno = d.dcode
START WITH e.empno = 19966102
CONNECT BY prior e.empno = e.pempno
;