/* © 2023 Tushar Aggarwal. All rights reserved. 
@https://github.com/tushar2704/
International Debt Analysis
*/
----------------------------------------------
SELECT * FROM ids;
--Query 1)Number of Distinct Countries
SELECT 
	COUNT(DISTINCT country_name) AS Total_Countries
FROM 
	ids
	;

--Query 2)Number of Distinct Debt indicators
SELECT
	COUNT(DISTINCT series_name) AS total_indicators
FROM
	ids
	;

--Query 3)Total amount of Debt owed by countries for 2022
SELECT 
	country_name, SUM(_2022) AS Total_Debt_2022
FROM
	ids
GROUP BY 1
ORDER BY 1;

--Query 4)Country with highest Total Debt in 2022
SELECT
	country_name, SUM(_2022) AS Total_Debt_2022
FROM
	ids
GROUP BY 1
ORDER BY 2 DESC
LIMIT 8
	;

--Query 5)








































































































































































/* © 2023 Tushar Aggarwal. All rights reserved. 
@https://github.com/tushar2704/
International Debt Analysis
*/