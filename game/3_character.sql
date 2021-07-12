-- Create a new table called 'character' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.character ', 'U') IS NOT NULL
DROP TABLE dbo.character
GO
-- Create the table in the specified schema
CREATE TABLE dbo.character
(
    characterId [INT] NOT NULL PRIMARY KEY,
    -- primary key column
    characterName [NVARCHAR](10) NOT NULL,
    class [VARCHAR](10) NOT NULL,
    ATK [INT] NOT NULL,
    DEF [INT] NOT NULL,
    LEVEL [INT] NOT NULL,
    ownedInvenId [INT] NOT NULL UNIQUE FOREIGN KEY (ownedInvenId) references inven(invenid),

);
GO