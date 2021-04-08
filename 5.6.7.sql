-- 5.6.7 Scalar Subquery——Subqueries in the Select Clause
-- 根据小区/基站工参表和一阶邻区关系表，列出频点为38400的所有小区的一阶邻区数目。
SELECT S_SECTOR_ID,COUNT(N_SECTOR_ID)
FROM 2tbadjcell
WHERE S_EARFCN = '38400'
GROUP BY S_SECTOR_ID
