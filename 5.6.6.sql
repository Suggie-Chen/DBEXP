-- 5.6.6 With Clause
-- 根据路测ATU切换统计矩阵表和MRO测量报告数据表，使用with语句找出所有具有最低切换次数的小区的MRO测量信息。
WITH min_hoatt(val) AS(
 SELECT MIN(hoatt)
 FROM 8tbatuhandover
 )
 
 SELECT *
 FROM 8tbatuhandover JOIN 9tbmrodata ON SECTOR_ID = ServingSector AND NSECTOR_ID = InterferingSector,min_hoatt
 WHERE HOATT = min_hoatt.val