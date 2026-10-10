SELECT
    pd.p_name,
    COUNT(*) AS player_count
FROM dbo.tblPlayerDim p
INNER JOIN 
dbo.tblPositionDim pd
    ON p.p_id = pd.p_id
GROUP BY
    pd.p_name;