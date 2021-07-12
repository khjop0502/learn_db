-- Create a new table called '[user]' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.[user]', 'U') IS NOT NULL
DROP TABLE dbo.[user]
GO
-- Create the table in the specified schema
CREATE TABLE dbo.[user]
(
    userId [INT] NOT NULL PRIMARY KEY,
    openUserId [VARCHAR](20) NOT NULL UNIQUE,
    --아이디 제약조건 더 추가
    PASSWORD [INT] NOT NULL,
    --패스워드
    cpId [INT] foreign key (cpId) references characterPage(characterPageId),
);
GO

