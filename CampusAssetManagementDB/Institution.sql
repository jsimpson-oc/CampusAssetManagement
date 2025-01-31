CREATE TABLE [dbo].[Institution]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY, -- Primary Key, Auto-increment by 1 starting at 1
	[Name] NVARCHAR(100) NOT NULL, -- Name of the institution (required)
    [CreatedAt] DATETIME NOT NULL DEFAULT GETDATE(), -- Date the institution was added to the system
)
