col tablespace_name for a15
col file_name for a60
SELECT tablespace_name,
	   bytes/1024/1024 MB,
	   file_name
  FROM dba_data_files;
  
  
ALTER DATABASE DATAFILE 'C:\APP\GY\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF'
AUTOEXTEND ON;