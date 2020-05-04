-- African entries
select count(*)
from countries
where continent like '%africa%';

-- Oceania population in 2005
select round(SUM(population_years.population),2)
from countries
join population_years on countries.id = population_years.country_id
where countries.continent like '%oceania%'
AND population_years.year = 2005;

-- South America AVG population in 2003
select round(AVG(population_years.population),2)
from countries
join population_years on countries.id = population_years.country_id
where countries.continent like '%south america%'
AND population_years.year = 2003;

-- Minimum Population in 2007
select 
countries.name,
min(population_years.population)
from countries
join population_years on countries.id = population_years.country_id
AND population_years.year = 2007;

-- Avg Population of Poland
select round(AVG(population_years.population),2)
from countries
join population_years on countries.id = population_years.country_id
where countries.name like '%poland%';

-- Contries with The
select count(*)
from countries
where name like '%The%';

-- Population of each continent in 2010
select 
countries.continent,
sum(population_years.population)
from countries
join population_years on countries.id = population_years.country_id
AND population_years.year = 2010
GROUP BY 1
ORDER BY 2 DESC;
