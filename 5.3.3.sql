SELECT 2tbadjcell.`S_SECTOR_ID` ,2tbadjcell.`N_SECTOR_ID`
FROM 2tbadjcell LEFT JOIN 3tbsecadjcell ON 2tbadjcell.`N_SECTOR_ID`=3tbsecadjcell.`N_SECTOR_ID` AND 2tbadjcell.`S_SECTOR_ID`= 3tbsecadjcell.`S_SECTOR_ID`
WHERE 3tbsecadjcell.`N_SECTOR_ID` IS NULL