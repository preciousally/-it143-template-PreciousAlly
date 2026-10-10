CREATE OR ALTER VIEW dbo.v_simpsons_family_spending
AS
SELECT
    Card_Member,
    SUM(Amount) AS Total_Spending
FROM dbo.Planet_Express
GROUP BY Card_Member;
GO