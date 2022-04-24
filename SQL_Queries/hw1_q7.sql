select count(name) as count from people
where person_id in(select person_id from crew
where (category = 'actor' OR category = 'actress')  AND title_id in (select title_id from crew
where person_id in (select person_id from people
where people.name = "Mark Hamill" AND people.born = 1951) 
))




/*
206
*/