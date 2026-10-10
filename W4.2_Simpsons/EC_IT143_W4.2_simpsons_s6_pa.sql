TRUNCATE TABLE dbo.t_simpsons_family_spending;

INSERT INTO dbo.t_simpsons_family_spending
(
    Card_Member,
    Total_Spending
)
SELECT
    Card_Member,
    Total_Spending
FROM dbo.v_simpsons_family_spending