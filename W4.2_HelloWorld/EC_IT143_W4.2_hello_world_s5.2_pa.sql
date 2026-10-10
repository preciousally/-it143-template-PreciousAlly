DROP TABLE IF EXISTS dbo.t_hello_world;
GO

CREATE TABLE dbo.t_hello_world
(
    hello_world_id INT IDENTITY(1,1)
        PRIMARY KEY,

    my_message VARCHAR(100)
        NOT NULL
);
GO