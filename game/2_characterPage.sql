-- Create a new table called 'characterPage' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.characterPage', 'U') IS NOT NULL
DROP TABLE dbo.characterPage
GO
-- Create the table in the specified schema
CREATE TABLE dbo.characterPage
(
    characterPageId INT NOT NULL PRIMARY KEY,
    -- primary key column
    characterI [INT] foreign key (characterI) references character(characterId),
    characterII [INT] foreign key (characterII) references character(characterId),
);
GO