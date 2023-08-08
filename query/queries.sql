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

--Query 5)Average debt across all indicators for 2022
SELECT
	series_code, ROUND((AVG(_2022))::numeric, 2) AS Average_Debt
FROM
	ids
GROUP BY 1
ORDER BY 2 DESC
	;

--Query 6)Total Debt Over Years for China
SELECT Country_Name, 
       _2006 + _2007 + _2008 + _2009 + _2010 + _2011 + _2012 + 
       _2013 + _2014 + _2015 + _2016 + _2017 + _2018 + _2019 +
       _2020 + _2021 + _2022 + _2023 + _2024 + _2025 + _2026 +
       _2027 + _2028 + _2029 AS total_debt
FROM ids
WHERE Country_Name = 'China';

--Query 7)Debt Distribution by Country and Series for 2022
SELECT 
	Country_Name AS Country, Series_Name AS Indicator, _2022 AS debt_2022
FROM 
	ids
WHERE
 	_2022 !=0
ORDER BY 
	Country_Name, Series_Name;
	
--Query 8)Country with the Highest Debt Increase from 2021 to 2022
SELECT 
	Country_Name, (_2022 - _2021) AS debt_increase
FROM 
	ids
ORDER BY 
	debt_increase DESC
LIMIT 25;

--Query 9)Country with the Highest Accumulated Debt Over All Years(2006-2022)
SELECT Country_Name,
       (_2006 + _2007 + _2008 + _2009 + _2010 + _2011 + _2012 + 
       _2013 + _2014 + _2015 + _2016 + _2017 + _2018 + _2019 +
       _2020 + _2021 + _2022 ) AS total_accumulated_debt
FROM ids
ORDER BY total_accumulated_debt DESC
LIMIT 25;

--Query 10)Debt Change Percentage between 2021 and 2022 for Each Country
SELECT 
    Country_Name, 
    ROUND(((_2022 - _2021) / _2021 * 100)::numeric, 2) AS debt_change_percentage
FROM 
    ids
WHERE 
    _2021 != 0
ORDER BY 
    debt_change_percentage DESC;







































































































































































/* © 2023 Tushar Aggarwal. All rights reserved. 
@https://github.com/tushar2704/
International Debt Analysis
*/