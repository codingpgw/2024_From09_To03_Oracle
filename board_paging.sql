--paging
col title for a10
col contents for a10
col reg_id for a10
col mod_id for a10
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