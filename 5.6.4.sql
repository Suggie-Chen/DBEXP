
-- 按照实验指导用unique的写法
-- SELECT T.`SCELL`,T.`WeightedC2I`
-- FROM 10tbc2i AS T
-- where UNIQUE(SELECT S.`SECTOR_ID`
-- 	     FROM 8tbatuhandover AS S
--  	     WHERE T.`SCELL` = S.`SECTOR_ID` AND T.`NCELL` = S.`NSECTOR_ID`
-- 	     )


-- MySQL不支持unique函数检测子查询结果中是否存在重复元组
SELECT T.`SCELL`,T.`WeightedC2I`
FROM 10tbc2i AS T
WHERE 1>=( SELECT COUNT(S.`SECTOR_ID`)
	     FROM 8tbatuhandover AS S
 	     WHERE T.`SCELL` = S.`SECTOR_ID` AND T.`NCELL` = S.`NSECTOR_ID`
	     )
