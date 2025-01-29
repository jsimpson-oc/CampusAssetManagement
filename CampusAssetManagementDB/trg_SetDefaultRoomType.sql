CREATE TRIGGER trg_SetDefaultRoomType
ON Room
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Ensure rooms with NULL RoomTypeID get the "Unknown" RoomType
    UPDATE Room
    SET RoomTypeID = (SELECT RoomTypeID FROM RoomType WHERE TypeName = 'Unknown')
    WHERE RoomTypeID IS NULL;
END;