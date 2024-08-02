select * from movies

select distinct title from movies

select distinct director from movies

--aggregate function
	
select title,director,sum(ratings) from movies group by title,director

select title ,sum(duration) as duration_sum,sum(ratings) as ratings_sum from movies group by title

select title, avg(ratings) from movies group by title order by avg(duration) 

select ratings,count(ratings) from movies group by ratings order by count(ratings) desc

select title,genre, min(duration) from movies group by title,genre 

select title,genre, max(ratings) from movies group by title,genre order by max(ratings) desc

select title,sum(ratings) from movies group by title order by sum(ratings) asc limit 1

--having
	
select title,director ,sum(ratings) from movies group by title,director having sum(ratings) >=5.5 

--where

select title,genre ,sum(duration) from movies where duration >100 group by title,genre

--having,where

select title,genre ,sum(ratings) from movies
	where ratings>4 
	group by title,genre
    having sum(ratings) >8

--case

select title,ratings,
case
     when ratings<3 then '3star'
     when ratings<5 then '5star'
     else 'excellent'
end as "movie_review"
from movies









