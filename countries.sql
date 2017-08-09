1:
select countries.name, languages.language, languages.percentage from countries
join languages on countries.id = country_id
where language = 'Slovene'
order by languages.percentage desc

2:
select count(countries.id), countries.name from cities
join countries on cities.country_id = countries.id
group by countries.id
order by count(countries.id) desc

3:
select cities.name, cities.population from cities
join countries on countries.id = cities.country_id
where countries.name = 'Mexico' AND cities.population > 500000
order by cities.population desc

4:
select countries.name, languages.language, languages.percentage from languages
join countries on countries.id = languages.country_id
where languages.percentage > 89
order by languages.percentage desc

5:
select name, surface_area, population from countries
where surface_area < 501 AND population > 100000

6:
select name, government_form, capital, life_expectancy from countries
where government_form = 'Constitutional Monarchy' AND capital > 200 AND life_expectancy >75

7:
select countries.name, cities.name, cities.district, cities.population from cities
join countries on countries.id = cities.country_id
where countries.name = 'Argentina' AND cities.population > 500000 AND cities.district = 'Buenos Aires'

8:
select count(id), name, region from countries
group by region
order by count(id) desc