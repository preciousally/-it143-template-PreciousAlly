DROP TABLE IF EXISTS dbo.t_simpsons_family_spending;
GO

CREATE TABLE dbo.t_simpsons_family_spending
(
    Card_Member VARCHAR(100) PRIMARY KEY,
    Total_Spendind MONEY NOT NULL
);
GO