begin
    for film_data in select id,title 
	       from film 
	       order by length desc, title
	       limit 10   loop 
        for actor in select actor_name from actors where actors.film_id=film_data.id loop
            raise notice 'film name=% , actor name=%', film_data.title, actor.actor_name;
        end loop;
    end loop;
end;
