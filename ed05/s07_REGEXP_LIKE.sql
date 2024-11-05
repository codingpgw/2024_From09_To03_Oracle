-- 연속적인 글자 수 지정
--소문자가 연속해서 2개 이상
SELECT * 
  FROM t_reg
 WHERE REGEXP_LIKE(text,'[a-z]{2}')
 ;