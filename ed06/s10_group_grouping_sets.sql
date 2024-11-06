SELECT grade,deptno1,COUNT(*)
  FROM student
GROUP BY GROUPING SETS(grade,deptno1)
ORDER BY grade,deptno1
;