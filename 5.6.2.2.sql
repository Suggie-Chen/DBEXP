SELECT DISTINCT InterferingSector,LteNcPci
FROM 8tbatuhandover JOIN 9tbmrodata ON SECTOR_ID = ServingSector AND NSECTOR_ID = InterferingSector
WHERE HOATT >= ALL (SELECT HOATT
		    FROM 8tbatuhandover JOIN 9tbmrodata ON SECTOR_ID = ServingSector AND NSECTOR_ID = InterferingSector)