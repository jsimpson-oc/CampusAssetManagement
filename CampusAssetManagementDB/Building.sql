CREATE TABLE [dbo].[Building]
(
	[BuildingId] INT PRIMARY KEY IDENTITY(1,1), -- Primary Key, Auto-increment by 1 starting at 1
    [CampusID] INT NOT NULL DEFAULT 1, -- Linked to a campus, see foreign key constraint below
    [BuildingName] NVARCHAR(100) NOT NULL, -- Name of the building (required)
    [Address] NVARCHAR(255) NULL, -- Address of the building (optional)
    [CreatedAt] DATE NOT NULL DEFAULT GETDATE(),-- Date the building was added to the system
    CONSTRAINT [FK_Building_Campus] FOREIGN KEY ([CampusID]) REFERENCES [dbo].[Campus]([CampusId]) ON DELETE CASCADE -- Foreign key constraint to ensure that the campus exists
)
