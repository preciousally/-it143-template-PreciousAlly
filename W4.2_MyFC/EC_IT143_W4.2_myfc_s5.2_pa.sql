DROP TABLE IF EXISTS dbo.t_myfc_position_counts;
GO

CREATE TABLE dbo.t_myfc_position_counts
(
    p_name VARCHAR(50)
        PRIMARY KEY,

    player_count INT NOT NULL
);
GO