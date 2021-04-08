-- 5.7  综合---查询语句
-- 根据小区/基站工参表和小区切换统计性能表，查询具有最多二阶邻区数的小区的最大切换成功次数、相应的切换目标小区ID、尝试切换次数。

-- 找出小区和其相应的二阶邻区数
WITH temp(S_SECTOR_ID,NNUM) AS(
SELECT S_SECTOR_ID,COUNT(N_SECTOR_ID)
FROM 3tbsecadjcell
GROUP BY S_SECTOR_ID
)
 
 
SELECT SCELL,NCELL,HOATT,HOSUCC
FROM 11tbhandover
WHERE SCELL =(SELECT S_SECTOR_ID
		FROM temp
		WHERE NNUM=(SELECT MAX(NNUM)
				FROM temp)
		)
	    