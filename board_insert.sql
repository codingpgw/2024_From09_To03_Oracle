--SELECT
--    seq,
--    title,
--    contents,
--    div,
--    read_cnt,
--    reg_id,
--    reg_dt,
--    mod_id,
--    mod_dt
--FROM
--    board;
	
col title for a17
col contents for a17
INSERT INTO board
SELECT LEVEL seq,
	   '제목 '|| LEVEL title,
	   '내용 '|| LEVEL contents,
	   DECODE(MOD(LEVEL,2),1,'10','20') div,
	   0 read_cnt,
	   DECODE(MOD(LEVEL,2),1,'admin','james') reg_id,
	   SYSDATE-LEVEL/60 reg_dt,
	   DECODE(MOD(LEVEL,2),1,'admin','james') mod_id,
	   SYSDATE-LEVEL/60 mod_dt
  FROM dual
CONNECT BY LEVEL <= 24
;

SELECT * FROM board;