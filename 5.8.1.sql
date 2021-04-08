-- 5.8.1 Deletion
-- 根据路测ATU切换统计矩阵表和小区切换统计性能表，删除切换次数均值小于3的小区切换性能统计数据。
DELETE
FROM 11tbhandover
WHERE SCELL IN(
		SELECT SECTOR_ID
		FROM 8tbatuhandover
		WHERE HOATT<3
		)`11tbhandover`