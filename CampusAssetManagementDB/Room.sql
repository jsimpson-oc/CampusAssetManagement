CREATE TABLE [dbo].[Room]
(
    [RoomID] INT PRIMARY KEY IDENTITY(1,1), -- Primary Key, Auto-increment by 1 starting at 1
    [RoomNumber] NVARCHAR(50) NOT NULL,  -- Could be "101", "A1", "B203"
    [BuildingID] INT NOT NULL,  -- Linked to a building, see foreign key constraint below
    [RoomTypeID] INT NULL,  -- Semi-Optional (e.g., Office, Lab, Classroom) Triggered by RoomType table
    [Capacity] INT NULL,  -- Optional: For classrooms/labs/meeting rooms
    [CreatedAt] DATETIME DEFAULT GETDATE(), -- Date the room was added to the system
    FOREIGN KEY (BuildingID) REFERENCES Building(BuildingID) ON DELETE CASCADE, -- Foreign key constraint to ensure that the building exists
    FOREIGN KEY (RoomTypeID) REFERENCES RoomType(RoomTypeID) ON DELETE SET NULL -- Foreign key constraint to ensure that the room type exists
)
