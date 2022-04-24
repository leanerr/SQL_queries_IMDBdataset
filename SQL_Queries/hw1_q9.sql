CREATE TRIGGER UndeleteEpisode AFTER DELETE
 ON episodes
 
BEGIN
SELECT CASE
WHEN OLD.episode_title_id = (SELECT episode_title_id from episodes 
        where show_title_id in (select title_id from titles 
        where primary_title = 'Senifeld' )) 
        THEN RAISE(ABORT,
'will add it again.') 
END; 
END;

 INSERT INTO episodes
        (episode_title_id ,show_title_id,season_number, episode_number)
        VALUES(OLD.episode_title_id,OLD.show_title_id,OLD.season_number,OLD.episode_number);