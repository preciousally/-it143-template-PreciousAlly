CREATE OR ALTER PROCEDURE dbo.usp_load_hello_world
AS
BEGIN

    TRUNCATE TABLE dbo.t_hello_world;

    INSERT INTO dbo.t_hello_world
    (
        my_message
    )
    SELECT
        my_message
    FROM dbo.v_hello_world;

END;
GO