-- Create a new table called 'item' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.item', 'U') IS NOT NULL
DROP TABLE dbo.item
GO
-- Create the table in the specified schema
CREATE TABLE dbo.item
(
    itemId INT NOT NULL PRIMARY KEY,
    -- primary key column
    itemName [NVARCHAR](20) NOT NULL,
    itemType [VARCHAR](50) NOT NULL,
    lvRequirement [INT] NOT NULL,
    itemParameter [INT] NOT NULL,
    -- specify more columns here
);
GO
