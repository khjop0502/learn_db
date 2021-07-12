-- Create a new table called 'monster' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.monster', 'U') IS NOT NULL
DROP TABLE dbo.monster
GO
-- Create the table in the specified schema
CREATE TABLE dbo.monster
(
    monsterId INT NOT NULL PRIMARY KEY,
    -- primary key column
    monsterName [NVARCHAR](20) NOT NULL,
    monsterType [VARCHAR](10) NOT NULL,
    monsterlv [INT] NOT NULL,
    -- specify more columns here
);
GO