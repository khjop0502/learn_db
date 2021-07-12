-- Create a new table called 'map' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.map', 'U') IS NOT NULL
DROP TABLE dbo.map
GO
-- Create the table in the specified schema
CREATE TABLE dbo.map
(
    mapId INT NOT NULL PRIMARY KEY,
    -- primary key column
    mapName [NVARCHAR](30) NOT NULL UNIQUE,
    mapData [INT] NOT NULL,-- 스폰 몬스터 맵 지형정보등
    -- specify more columns here
);
GO