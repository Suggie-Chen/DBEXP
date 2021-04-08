SELECT *
FROM 1tbcell JOIN 6tbatudata ON SECTOR_ID = CellID
WHERE RSRP > SOME (
		     SELECT RSRP
		     FROM 1tbcell JOIN 6tbatudata ON SECTOR_ID = CellID
		     WHERE ENODEBID='5660'   -- 注意这条查询为空
			)
