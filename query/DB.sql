/* © 2023 Tushar Aggarwal. All rights reserved. 
@https://github.com/tushar2704/
International Debt Analysis
*/



/*------------------------------------Database---------------------------------*/
CREATE DATABASE intdebt;
/*-----------------------------------------------------------------------------*/

/*------------------------------------Tables-----------------------------------*/
CREATE TABLE ids (
	Country_Name VARCHAR(50),
	Country_Code VARCHAR(3),
	Series_Name VARCHAR(100),
	Series_Code VARCHAR(50),
	_2006 FLOAT,
	_2007 FLOAT,
	_2008 FLOAT,
	_2009 FLOAT,
	_2010 FLOAT,
	_2011 FLOAT,
	_2012 FLOAT,
	_2013 FLOAT,
	_2014 FLOAT,
	_2015 FLOAT,
	_2016 FLOAT,
	_2017 FLOAT,
	_2018 FLOAT,
	_2019 FLOAT,
	_2020 FLOAT,
	_2021 FLOAT,
	_2022 FLOAT,
	_2023 FLOAT,
	_2024 FLOAT,
	_2025 FLOAT,
	_2026 FLOAT,
	_2027 FLOAT,
	_2028 FLOAT,
	_2029 FLOAT
	);

COPY ids 
FROM 'D:\International-Debt-Analysis\src\data\IDS_ALLCountries_Data_cleaned.csv'
WITH (FORMAT CSV, HEADER);

/*------------------------------------Tables-----------------------------------*/

/*-Checking for ids Table-*/

SELECT
	*
FROM
	ids
LIMIT 100;

/* © 2023 Tushar Aggarwal. All rights reserved. 
@https://github.com/tushar2704/
International Debt Analysis
*/


