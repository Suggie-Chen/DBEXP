-- 因为mysql不支持intersect except等语句，所有用其他的等价方法实现
SELECT S_SECTOR_ID,N_SECTOR_ID
FROM 2tbadjcell NATURAL JOIN 3tbsecadjcell

