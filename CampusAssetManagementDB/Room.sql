CREATE TABLE [dbo].[Room]
(
    [RoomID] INT PRIMARY KEY IDENTITY(1,1),
    [RoomNumber] NVARCHAR(50) NOT NULL,  -- Could be "101", "A1", "B203"
    [BuildingID] INT NOT NULL,  -- Linked to a building
    [RoomTypeID] INT NULL,  -- Semi-Optional (e.g., Office, Lab, Classroom) Triggered by RoomType table
    [Capacity] INT NULL,  -- Optional: For classrooms/labs
    [CreatedAt] DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (BuildingID) REFERENCES Building(BuildingID) ON DELETE CASCADE,
    FOREIGN KEY (RoomTypeID) REFERENCES RoomType(RoomTypeID) ON DELETE SET NULL
)
