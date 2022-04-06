-- Activity 2.5 
--  dataV3_lesson_2.5_lab
use sakila;
-- 1

select * 
from sakila.actor
where first_name = 'Scarlett';

-- 2
-- why are you doing this particular way..?
select count(distinct inventory_id) as rental_films
from sakila.rental
;


-- 3

select min(length) as 'max_duration', Max(length) as 'max_duration'
from sakila.film;

-- 4

select convert(avg(length), Time) as duration
from sakila.film;

-- 5
select count(distinct last_name) as 'different_last_names'
from sakila.actor;

-- 6 

select datediff (max(last_update), min(rental_date)) as 'open_for rental_in_days'
from sakila.rental;

-- 7

-- select *, date_format(convert(rental_date, date),'%M') as rental_data_month, date_format(convert(rental_date, date),'%W') as rental_date_weekday, 
-- date_format(convert(return_date, date),'%M') as rental_data_month, date_format(convert(retun_date, date),'%W') as rental_date_weekday
-- from sakila.rental
-- limit 20;

SELECT *, DATE_FORMAT(CONVERT(rental_date, DATE),'%m') AS rental_month, DATE_FORMAT(CONVERT(return_date, DATE),'%m') AS return_month,
DATE_FORMAT(CONVERT(rental_date, DATE),'%w') AS rental_week, DATE_FORMAT(CONVERT(return_date, DATE),'%w') AS return_week
FROM sakila.rental
LIMIT 20;

-- 8
select *, case when(DATE_FORMAT(CONVERT(rental_date, DATE),'%W') in ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')) then 'Workday' else 'Weekend' end as 'day_type'
from sakila.rental;

SELECT *, CASE WHEN(DATE_FORMAT(CONVERT(rental_date, DATE), '%W') IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')) THEN 'Workday' ELSE 'Weekend' END AS 'day_type'
FROM sakila.rental;

-- 9

select distinct release_year
from sakila.film;


-- 10 
select title
from sakila.film
where title like '%Armageddon%';

-- 11

select title
from sakila.film
where title like '%Apollo';

-- 12

select title, length
from sakila.film
order by length desc
limit 10;

-- 13

select title special_features
from sakila.film
where special_features like '%Behind the Scenes%';


select count(*) as 'Behind the scenes'
from sakila.film
where special_features like '%Behind the Scenes%';
# answer 538


