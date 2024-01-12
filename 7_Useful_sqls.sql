/************************************************************************
Author	: Sarfaraz Makandar
Date 	: 11-01-2024
Script	: List of useful SQL's to get details of the database. 
************************************************************************/

/**************************************************************************
Query 1: Query to get Database Object Count
**************************************************************************/
SELECT	o.type_desc AS Object_Type
        ,count(o.name) as Object_Count
FROM  sys.objects o 
JOIN  sys.schemas s ON  s.schema_id = o.schema_id
WHERE o.type NOT IN ('IT','SQ','TR','S')
group by o.type_desc,o.type
ORDER BY  Object_Type;

/**************************************************************************
Query 2: Query to get Database Object Details
**************************************************************************/
SELECT	s.name AS Schema_Name
		,o.type_desc AS Object_Type
        ,o.name as ObjectName
FROM  sys.objects o 
JOIN  sys.schemas s ON  s.schema_id = o.schema_id
WHERE o.type NOT IN ('IT','SQ','TR','S')
ORDER BY  Object_Type;

/**************************************************************************
--Query 3: Query to get data count in the user table's
**************************************************************************/
SELECT	t.name AS table_name
		,s.row_count AS row_count
FROM sys.tables t
JOIN sys.dm_db_partition_stats s ON t.OBJECT_ID = s.OBJECT_ID
	 AND t.type_desc = 'USER_TABLE'
	 AND t.name NOT LIKE '%dss%'
	 AND s.index_id IN (0, 1)
ORDER BY table_name;

/**************************************************************************
--Query 4: Query to get data count in the user views
**************************************************************************/
DECLARE @sql nvarchar(max) = N'';

SELECT @sql += N'UNION ALL
	SELECT ' + 'N''' + v.name + N''',
			COUNT(*) AS Records
	FROM ' + QUOTENAME(s.name) + N'.' + QUOTENAME(v.name) +N''
FROM sys.views AS v
INNER JOIN sys.schemas AS s
ON v.schema_id = s.schema_id
LEFT OUTER JOIN sys.partitions AS p
ON v.object_id = p.object_id
AND p.index_id IN (0,1)
GROUP BY s.name, v.name
ORDER BY v.name;

SET @sql = STUFF(@sql, 1, CHARINDEX(N'SELECT', @sql)-1, N'');

PRINT @sql;

EXEC sys.sp_executesql @sql;


/**************************************************************************
--Query 5: Query to Data Types by user tables in the database
**************************************************************************/
select	c.TABLE_NAME
		,COLUMN_NAME 
		,DATA_TYPE 
		,CHARACTER_MAXIMUM_LENGTH
		,NUMERIC_PRECISION
		,DATETIME_PRECISION 
		,IS_NULLABLE 
		,c.collation_name
from INFORMATION_SCHEMA.COLUMNS c 
INNER JOIN sys.tables t on c.TABLE_NAME = t.name
where t.type_desc = 'USER_TABLE' AND t.name NOT LIKE '%dss%'


/**************************************************************************
--Query 6: 
**************************************************************************/


