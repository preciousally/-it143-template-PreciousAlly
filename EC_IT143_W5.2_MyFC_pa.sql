/******************************************************************
Community: MyFC
Author: Precious Jamilah Ally

Question 1
Original Author: Precious
******************************************************************/

/*
Question:
Which player has received the highest total salary over time?
*/

SELECT
    p.pl_name,
    SUM(f.mtd_salary) AS total_salary
FROM dbo.tblPlayerFact f
INNER JOIN dbo.tblPlayerDim p
    ON f.pl_id = p.pl_id
GROUP BY p.pl_name
ORDER BY total_salary DESC;


/******************************************************************
Question 2
Original Author: Precious
******************************************************************/

/*
Question:
How many players are assigned to each position?
*/

SELECT
    pd.p_name,
    COUNT(*) AS player_count
FROM dbo.tblPlayerDim p
INNER JOIN dbo.tblPositionDim pd
    ON p.p_id = pd.p_id
GROUP BY pd.p_name;


/******************************************************************
Question 3
Original Author: Precious
******************************************************************/

/*
Question:
Which team has the largest number of players?
*/

SELECT
    t.t_code,
    COUNT(*) AS player_count
FROM dbo.tblPlayerDim p
INNER JOIN dbo.tblTeamDim t
    ON p.t_id = t.t_id
GROUP BY t.t_code
ORDER BY player_count DESC;


/******************************************************************
Question 4
Original Author: Diana onuigbo Ezeson
******************************************************************/

/*
Question:
Which soccer team has the highest total month-to-date salary,
and how does that compare to the number of players on that team?
*/

SELECT
    t.t_code,
    COUNT(DISTINCT p.pl_id) AS player_count,
    SUM(f.mtd_salary) AS total_team_salary
FROM dbo.tblTeamDim t
INNER JOIN dbo.tblPlayerDim p
    ON t.t_id = p.t_id
INNER JOIN dbo.tblPlayerFact f
    ON p.pl_id = f.pl_id
GROUP BY t.t_code
ORDER BY total_team_salary DESC;