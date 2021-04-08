-- 根据路测ATU数据表，查询第1邻小区/干扰小区物理小区标识不为空的服务小区ID、服务小区PCI。
SELECT CellID,PCI
FROM 6tbatudata
WHERE NCell_ID_1 IS NOT NULL