--SCOTT.REORG

--��� ���� UPDATE
ANALYZE TABLE SCOTT.REORG COMPUTE STATISTICS;

--���̺� ũ�� ��ȸ : dba_segments

SELECT SUM(bytes)/(1024*1024) MB
  FROM dba_segments
 WHERE owner = 'SCOTT'
   AND segment_name = 'REORG'
;

--���̺� ���� ��ȸ : dba_tables
col table_name for a20
SELECT table_name,
	   num_rows,
	   blocks,
	   empty_blocks
  FROM dba_tables
 WHERE owner = 'SCOTT'
   AND table_name = 'REORG'
; 