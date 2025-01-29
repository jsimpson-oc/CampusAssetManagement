﻿CREATE TABLE [dbo].[Campus]
(
	[CampusId] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(100) NOT NULL, 
    [Address] NVARCHAR(255) NOT NULL,
    [City] NVARCHAR(100) NOT NULL,
    [State] NVARCHAR(2) NOT NULL,
    [ZipCode] NVARCHAR(10) NOT NULL,
    [Country] NVARCHAR(100) NOT NULL,
    [HQ] BIT NOT NULL DEFAULT 0,
    [InstitutionId] INT NULL DEFAULT 1, 
    [CreatedAt] DATE NULL DEFAULT GETDATE(),
)
