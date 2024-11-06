--COL XMLELEMENT FOR A30
--SELECT deptno,
--	   XMLELEMENT("US.PR",ename) "XMLELEMENT"
--  FROM emp
--ORDER BY deptno,ename
--;


--COL XMLELEMENT FOR A100
--SELECT deptno,
--	   XMLAGG(XMLELEMENT("US.PR",ename) ORDER BY ename) "XMLELEMENT"
--  FROM emp
--GROUP BY deptno
--;

COL XMLELEMENT FOR A50
SELECT deptno,
	   SUBSTR(XMLAGG(XMLELEMENT("US.PR",',',ename) ORDER BY ename).EXTRACT('//text()').getstringval(),2) "XMLELEMENT"
  FROM emp
GROUP BY deptno
;