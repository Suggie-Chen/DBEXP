SELECT NCell_ID_1 , NCell_EARFCN_1 , NCell_PCI_1 , NCell_RSRP_1
FROM 6tbatudata JOIN 4tboptcell ON  SECTOR_ID = CellID
WHERE NOT EXISTS (SELECT *
		  FROM 6tbatudata JOIN 4tboptcell ON  SECTOR_ID = CellID
		  WHERE CELL_TYPE = '保护带')


-- select NCell_ID_1 , NCell_EARFCN_1 , NCell_PCI_1 , NCell_RSRP_1
-- from 6tbatudata join 4tboptcell on  SECTOR_ID = CellID
--  WHERE CELL_TYPE  = '优化区'