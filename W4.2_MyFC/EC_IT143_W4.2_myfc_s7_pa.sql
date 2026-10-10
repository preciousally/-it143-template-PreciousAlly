CREATE OR ALTER PROCEDURE dbo.usp_load_myfc_position_counts
AS
BEGIN

    TRUNCATE TABLE dbo.t_myfc_position_counts;

    INSERT INTO dbo.t_myfc_position_counts
    (
        p_name,
        player_count
    )
    SELECT
        p_name,
        player_count
    FROM dbo.v_myfc_position_counts;

END;
GO