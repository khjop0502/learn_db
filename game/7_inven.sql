-- Create a new table called 'inven' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.inven', 'U') IS NOT NULL
DROP TABLE dbo.inven
GO
-- Create the table in the specified schema
CREATE TABLE dbo.inven
(
    invenId INT NOT NULL PRIMARY KEY,
    -- primary key column
    OWNER [int] NOT NULL UNIQUE FOREIGN KEY (owner) REFERENCES CHARACTER(CHARACTERid),
    inven1 [INT] foreign key (inven1) references item(itemId),
    inven2 [INT] foreign key (inven2) references item(itemId),
    inven3 [INT] foreign key (inven3) references item(itemId),
    inven4 [INT] foreign key (inven4) references item(itemId),
    inven5 [INT] foreign key (inven5) references item(itemId),
    inven6 [INT] foreign key (inven6) references item(itemId),
    inven7 [INT] foreign key (inven7) references item(itemId),
    inven8 [INT] foreign key (inven8) references item(itemId),
    inven9 [INT] foreign key (inven9) references item(itemId),
);
GO