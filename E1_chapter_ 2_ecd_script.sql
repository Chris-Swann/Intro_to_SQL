SELECT * 
FROM ecd;

--1. How many counties are represented? How many companies?
--Answer: 88 counties, 764 companies
SELECT COUNT(DISTINCT county) AS county_count
FROM ecd;

SELECT COUNT(DISTINCT company) AS company_count
FROM ecd;

--2. How many companies did not get ANY Economic Development grants (ed) for any of their projects?
--Answer: 608
SELECT COUNT(DISTINCT company) AS company_count
FROM ecd
WHERE ed IS NUll;

--3. Total capital_investment when there was a grant received from the fjtap
SELECT capital_investment AS fjtap_cap_invest_mil
FROM ecd
WHERE fjtap IS NOT NULL;

--4. Average number of new jobs for each county_tier
--Answer: RUN SCRIPT
SELECT county_tier, AVG(new_jobs) AS average_new_jobs
FROM ecd
GROUP BY county_tier
ORDER BY county_tier ASC;

--5. How many companies are LLCs? 
--Answer: 114
--Explanation: ILIKE is case-insensitive. % % will match values in any position. 
SELECT COUNT(DISTINCT company) AS llc_companies
FROM ecd
WHERE company ILIKE '%llc%';





