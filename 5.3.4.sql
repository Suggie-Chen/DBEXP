-- 根据路测ATU C2I干扰矩阵表，使用except语句查询主小区和邻小区间干扰强度最大的小区。 
SELECT *
FROM 7tbatuc2i 
WHERE RATIO_ALL >=  (SELECT MAX(RATIO_ALL)
			FROM 7tbatuc2i)
