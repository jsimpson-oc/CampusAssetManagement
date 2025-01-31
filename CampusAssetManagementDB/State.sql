CREATE TABLE [dbo].[State] (
    [StateID] INT PRIMARY KEY IDENTITY(1,1), -- Primary Key, Auto-increment by 1 starting at 1
    [StateName] NVARCHAR(100) UNIQUE NOT NULL, -- Full state/province name
    [StateCode] NVARCHAR(2) UNIQUE NOT NULL CHECK (StateCode LIKE '[A-Z][A-Z]'), -- Two-letter state code
    [CountryID] INT NOT NULL, -- Foreign key reference
    FOREIGN KEY ([CountryID]) REFERENCES [dbo].[Country]([CountryID]) ON DELETE CASCADE
);
