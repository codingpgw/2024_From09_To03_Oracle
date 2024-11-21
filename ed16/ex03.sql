col "Name And Position" for a130
SELECT LPAD((e.name||'-'||d.dname||'-'||NVL(e.position,'Team-Worker')),LEVEL*27,'-') "Name And Position"
  FROM emp2 e JOIN dept2 d
    ON e.deptno = d.dcode
START WITH e.empno = 20000334
CONNECT BY e.empno = prior e.pempno
;