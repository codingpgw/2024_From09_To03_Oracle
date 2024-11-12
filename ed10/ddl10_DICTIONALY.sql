col table_name for a20
col column_name for a30
col data_type for a20
col Data_Length for 9999
SELECT table_name,column_name,data_type,Data_Length
  FROM user_tab_columns
 WHERE table_name = 'EMP';