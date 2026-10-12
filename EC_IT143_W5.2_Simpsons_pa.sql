/******************************************************************
Community: Simpsons
Author: Precious Jamilah Ally
******************************************************************/

/******************************************************************
Question 1
Original Author: Precious
******************************************************************/

/*
Question:
Which family member spends the most money overall?
*/

SELECT
    Card_Member,
    SUM(Amount) AS total_spending
FROM dbo.Planet_Express
GROUP BY Card_Member
ORDER BY total_spending DESC;


/******************************************************************
Question 2
Original Author: Precious
******************************************************************/

/*
Question:
Which spending category has the highest total spending?
*/

SELECT
    Category,
    SUM(Amount) AS total_spending
FROM dbo.Planet_Express
GROUP BY Category
ORDER BY total_spending DESC;


/******************************************************************
Question 3
Original Author: Precious
******************************************************************/

/*
Question:
Which family member has the highest total debit amount?
*/

SELECT
    Member_Name,
    SUM(Debit) AS total_debit
FROM dbo.FBS_Viza_Costmo
GROUP BY Member_Name
ORDER BY total_debit DESC;


/******************************************************************
Question 4
Original Author: Chimerumeze Chuku
******************************************************************/

/*
Question:
Which family member has the highest total spending, and
which category contributes the most to that spending?
*/

SELECT
    Card_Member,
    Category,
    SUM(Amount) AS total_spending
FROM dbo.Planet_Express
GROUP BY
    Card_Member,
    Category
ORDER BY total_spending DESC;