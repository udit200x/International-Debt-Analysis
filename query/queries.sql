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















































































































































































/* © 2023 Tushar Aggarwal. All rights reserved. 
@https://github.com/tushar2704/
International Debt Analysis
*/