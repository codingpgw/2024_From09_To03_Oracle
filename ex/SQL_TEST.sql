SELECT a.*,b.* 
  FROM (
	SELECT tt1.rnum no,
       tt1.seq,
       tt1.title,
       tt1.mod_id,
       TO_CHAR(tt1.mod_dt,'YYYY/MM/DD') mod_dt,
       tt1.read_cnt
	FROM(
		SELECT ROWNUM rnum, t1.*
		FROM(
			SELECT *
			FROM board
			--검색조건
		ORDER BY mod_dt DESC
        )t1
		--pageNo, pageSize
		--WHERE ROWNUM <= (:pageSize * (:pageNo - 1)+ :pageSize) --10,20,30,...
		WHERE ROWNUM <= 10
		)tt1
	--WHERE rnum >= (:pageSize * (:pageNo - 1)+ 1)        --1,11,21,31
	WHERE rnum >= 1
	)a
	CROSS JOIN (
		--페이지 번호 : 전체 글 수
		SELECT COUNT(*)
		FROM board
		--검색 조건
  )b
;


DESC user_views;

SELECT view_name,text,read_only
  FROM user_views;
 ----- 
SELECT LEVEL SEQ,
	   '제목 '|| LEVEL TITLE,
	   CASE
       WHEN LEVEL IN(13,14,15) THEN '20'
       ELSE '10'
       END DIV
  FROM dual
CONNECT BY LEVEL <= 15
;

SELECT a.*,b.* 
  FROM (
	SELECT 
	   tt1.seq,
       tt1.title,
	   DECODE(tt1.div,'10','10:자유게시판','20:공지사항') DIV,
	   tt1.read_cnt,
       tt1.reg_dt,
	   tt1.reg_id,
       TO_CHAR(tt1.mod_dt,'YYYY/MM/DD HH24:MI:SS') MOD_DT,
       tt1.mod_id
	FROM(
		SELECT ROWNUM rnum, t1.*
		FROM(
			SELECT *
			FROM board_99
		ORDER BY mod_dt DESC
        )t1
		WHERE ROWNUM <= (:pageSize * (:pageNo - 1)+ :pageSize) --10,20,30,...
		)tt1
	WHERE rnum >= (:pageSize * (:pageNo - 1)+ 1)        --1,11,21,31
	)a
	CROSS JOIN (
		SELECT COUNT(*)
		FROM board_99
  )b
;

SELECT 
	   tt1.seq,
       	   tt1.title,
	   DECODE(tt1.div,'10','10:자유게시판','20:공지사항') DIV,
	   tt1.read_cnt,
               tt1.reg_dt,
	   tt1.reg_id,
               TO_CHAR(tt1.mod_dt,'YYYY/MM/DD HH24:MI:SS') MOD_DT,
               tt1.mod_id
	FROM(
		SELECT ROWNUM rnum, t1.*
		FROM(
			SELECT *
			FROM board_99
		ORDER BY mod_dt DESC
       		 )t1
		WHERE ROWNUM <= (:pageSize * (:pageNo - 1)+ :pageSize) 
		)tt1
	WHERE rnum >= (:pageSize * (:pageNo - 1)+ 1)       
;

SELECT d.dname DNAME,
	   e.ename ENAME,
	   e.sal   SAL,
	   SUM(e.sal) OVER(PARTITION BY e.deptno) SUM_DEPT,
       ROUND(RATIO_TO_REPORT(e.sal) OVER(PARTITION BY e.deptno)*100,2) "%R"
  FROM emp e JOIN dept d
    ON e.deptno = d.deptno
ORDER BY d.deptno
;

SELECT ROWNUM,a.*
FROM(SELECT ROWNUM NO,
	   s.name "STU_NAME",
	   s.deptno1 DEPTNO1,
	   s.birthday BIRTHDAY,
	   d.dname "DEPT_NAME",
	   p.name "PROF_NAME"
  FROM student s,professor p,department d
 WHERE s.profno = p.profno
   AND p.deptno = d.deptno
   AND ROWNUM <= 10
ORDER BY s.deptno1
)a
;

SELECT ROWNUM,a.*
FROM(SELECT ROWNUM NO,
	   s.name "STU_NAME",
	   s.deptno1 DEPTNO1,
	   s.birthday BIRTHDAY,
	   d.dname "DEPT_NAME",
	   p.name "PROF_NAME"
  FROM student s JOIN professor p 
    ON s.profno = p.profno
    JOIN department d
   ON p.deptno = d.deptno
 WHERE ROWNUM <= 10
ORDER BY s.deptno1
)a
;

SELECT s.name "STUD_NAME",
	   sco.total TOTAL,
	   h.grade GRADE,
	   p.name PROF_NAME
  FROM student s,score sco,hakjum h,professor p
 WHERE sco.studno = s.studno
   AND s.profno = p.profno(+)
   AND sco.total BETWEEN h.min_point AND h.max_point
;

SELECT s.name "STUD_NAME",
	   sco.total TOTAL,
	   h.grade GRADE,
	   p.name PROF_NAME
  FROM student s JOIN score sco
    ON sco.studno = s.studno
  JOIN hakjum h
    ON sco.total BETWEEN h.min_point AND h.max_point
LEFT OUTER JOIN professor p
    ON s.profno = p.profno
;


SELECT ename,job,hiredate,
	   MAX(sal) OVER(PARTITION BY job) SALARY
  FROM emp
ORDER BY sal;

SELECT *
FROM (
  SELECT
    profno,
    TRUNC((SYSDATE - hiredate) / 365, -1) AS years_of_service
  FROM professor
)
PIVOT (
  COUNT(profno)
  FOR years_of_service IN (
    10 AS "10년",
    20 AS "20년",
    30 AS "30년",
    40 AS "40년",
    50 AS "50년"
  )
);