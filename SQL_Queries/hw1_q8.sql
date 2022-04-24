select primary_title from titles
where title_id in (select title_id from crew 
where person_id in (select person_id from people
where name = 'John Wayne' And born=1907 OR name = 'Ward Bond' And born=1903) 
group by title_id 
having count(title_id) = 2)
ORDER BY primary_title


/*
3 Godfathers
Homage for The Duke
John Wayne: The Unquiet American
Operation Pacific
*/