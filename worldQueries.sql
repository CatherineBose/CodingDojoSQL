SELECT countries.name, languages.language, languages.percentage
FROM countries 
	LEFT JOIN languages ON countries.id = languages.country_id
WHERE languages.language = "Slovene"
ORDER BY languages.percentage DESC

SELECT   countries.name, COUNT(cities.name) as cities
FROM countries
	LEFT JOIN  cities ON cities.country_code = countries.code
group by(countries.name) order by cities DESC

SELECT  cities.name as cities, cities.population
FROM countries
	LEFT JOIN  cities  ON cities.country_code = countries.code
WHERE countries.name = "Mexico" AND cities.population>500000

SELECT   countries.name, languages.language, languages.percentage as percentage
FROM countries
	LEFT JOIN languages ON languages.country_code = countries.code
WHERE languages.percentage>89
order by percentage DESC

SELECT   countries.name,countries.surface_area, countries.population
FROM countries
WHERE countries.surface_area<501 AND countries.population>100000


SELECT   countries.name,countries.surface_area, countries.population
FROM countries
WHERE countries.capital>200 AND countries.government_form= "Constitutional Monarchy" AND countries.life_expectancy>75


SELECT   countries.name, cities.name as cities,  cities.district,  countries.population
FROM cities
	LEFT JOIN countries ON cities.country_code = countries.code
WHERE countries.name= "Argentina" and cities.district="Buenos Aires" and countries.population>500000

SELECT   countries.region as region ,Count(countries.name) as countries
FROM countries
group by(countries.region) order by countries DESC
------
-- 1. What query would you run to get all the countries that speak Slovene? Your query should return the name of the country, language and language percentage. Your query should arrange the result by language percentage in descending order. (1)

-- 2. What query would you run to display the total number of cities for each country? Your query should return the name of the country and the total number of cities. Your query should arrange the result by the number of cities in descending order. (3)

-- 3. What query would you run to get all the cities in Mexico with a population of greater than 500,000? Your query should arrange the result by population in descending order. (1)

-- 4. What query would you run to get all languages in each country with a percentage greater than 89%? Your query should arrange the result by percentage in descending order. (1)

-- 5. What query would you run to get all the countries with Surface Area below 501 and Population greater than 100,000? (2)

-- 6. What query would you run to get countries with only Constitutional Monarchy with a capital greater than 200 and a life expectancy greater than 75 years? (1)

-- 7. What query would you run to get all the cities of Argentina inside the Buenos Aires district and have the population greater than 500, 000? The query should return the Country Name, City Name, District and Population. (2)

-- 8. What query would you run to summarize the number of countries in each region? The query should display the name of the region and the number of countries. Also, the query should arrange the result by the number of countries in descending order. (2)

S


