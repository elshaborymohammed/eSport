SET GLOBAL sql_mode = (SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', '')), group_concat_max_len= 9999999999999;
# SELECT @@GLOBAL.sql_mode;
# SELECT @@SESSION.sql_mode;