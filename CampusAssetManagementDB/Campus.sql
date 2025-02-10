CREATE TABLE [dbo].[Campus]
(
    [CampusId] INT PRIMARY KEY IDENTITY(1,1), -- Primary Key, Auto-increment by 1 starting at 1
    [Name] NVARCHAR(100) NOT NULL, -- Name of the campus (required)
    [Address] NVARCHAR(255) NOT NULL, -- Address of the campus (required)
    [City] NVARCHAR(100) NOT NULL, -- City of the campus (required)
    [StateID] INT NOT NULL, -- State / Territory of the campus (required)
    [ZipCode] NVARCHAR(10) NOT NULL, -- Zip code of the campus (required)
    [Country] NVARCHAR(100) NOT NULL DEFAULT 'UNITED STATES', -- Country of the campus (required)
    [HQ] BIT NOT NULL DEFAULT 0, -- Is this the headquarters of the institution? (required)
    [InstitutionId] INT NULL DEFAULT 1, -- Linked to an institution, No foreign key until multi-institution support is added
    [CreatedAt] DATE NULL DEFAULT GETDATE(), -- Date the campus was added to the system
    CONSTRAINT [FK_Campus_State] FOREIGN KEY ([StateID]) REFERENCES [dbo].[State] ([StateID]),
    CONSTRAINT [FK_Campus_Institution] FOREIGN KEY ([InstitutionId]) REFERENCES [dbo].[Institution] ([InstitutionId])
);