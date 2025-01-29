CREATE TABLE [dbo].[Building]
(
	[BuildingId] INT NOT NULL PRIMARY KEY, 
    [CampusID] INT NOT NULL DEFAULT 1, 
    [BuildingName] NVARCHAR(100) NOT NULL, 
    [Address] NVARCHAR(255) NULL, 
    [CreatedAt] DATE NOT NULL DEFAULT GETDATE(),
    CONSTRAINT [FK_Table1_Campus] FOREIGN KEY ([CampusID]) REFERENCES [dbo].[Campus]([CampusId]) ON DELETE CASCADE
)
