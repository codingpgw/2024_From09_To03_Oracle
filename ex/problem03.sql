
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
;