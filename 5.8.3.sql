-- 5.8.3 Updates


-- 将优化小区/保护带小区表中，小区ID为“246506-3”的小区的小区类型改为“优化区”。
-- update 4tboptcell
-- SET CELL_TYPE = '优化区'
-- where SECTOR_ID = '246506-3'


-- 用小区PCI优化调整结果表中“优化调整后的本小区PCI值”，替换小区/基站工参表中小区的“物理小区标识”。
-- UPDATE 1tbcell AS S
-- Set S.`PCI`= (select T.`PCI`
-- 	     FROM 5tbpciassignment AS T 
-- 	     where T.`SECTOR_ID`= S.SECTOR_ID)


-- 针对路测ATU C2I干扰矩阵表表，使用case语句作出如下修改：如果主小区与干扰小区为同站小区且干扰强度排序不小于1，则干扰强度排序减1；如果主小区与干扰小区不为同站，干扰强度排序加1。
UPDATE 7tbatuc2i
SET `RANK`=
	CASE 
		WHEN COSITE = 1 AND `RANK` >= 1 THEN   `RANK` - 1
		WHEN COSITE = 0 THEN   `RANK` + 1
		ELSE `RANK`
	END 

