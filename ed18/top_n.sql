--OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY
--OFFSET 0 ROWS는 시작 위치 0번 부터
--FETCH NEXT 10 ROWS ONLY는 가져올 해의 수
col title for a20
col mod_id for a20
SELECT ROWNUM rnum,
	   t1.title,
	   t1.mod_dt,
	   t1.read_cnt,
	   t1.mod_id
  FROM(
	SELECT *
	  FROM board
	ORDER BY mod_dt DESC
)t1
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;
--OFFSET(:PAGE_NO-1) * :PAGE_SIZE ROWS FETCH NEXT :PAGE_SIZE ROWS ONLY;
--OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;