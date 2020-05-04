-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

select *
from population_years
where country = 'Gabon'
order by population desc
limit 1;

select *
from population_years
where year = 2005
order by population asc
limit 10;

select distinct country
from population_years
where population >= 100
and year = 2010;

select count(distinct country)
from population_years
where country like '%island%';

select year, population
from population_years
where country = 'Indonesia'
and year in (2000, 2010);
