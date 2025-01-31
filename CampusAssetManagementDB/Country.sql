CREATE TABLE [dbo].[Country] (
    [CountryID] INT PRIMARY KEY IDENTITY(1,1), -- Primary Key, Auto-increment by 1 starting at 1
    [CountryName] NVARCHAR(100) UNIQUE NOT NULL, -- Full country name
    [CountryCode] NVARCHAR(3) UNIQUE NOT NULL CHECK (LEN(CountryCode) = 3) -- ISO-3166 Alpha-3 Code
);
