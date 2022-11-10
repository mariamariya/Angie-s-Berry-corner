create table Actor(
	act_id int,
	act_fname varchar,
	act_lname varchar,
	gender varchar
				   	
);

copy actor
from 'https://www.w3resource.com/sql-exercises/movie-database-exercise/movie_actor_view_data.php'