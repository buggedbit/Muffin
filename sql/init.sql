INSERT INTO movie_owner (handle, name) VALUES ('marvel', 'marvel');
INSERT INTO movie_owner (handle, name) VALUES ('dc', 'dc');
INSERT INTO movie_owner (handle, name) VALUES ('universal', 'universal');
INSERT INTO movie_owner (handle, name) VALUES ('annapurna', 'annapurna');

INSERT INTO movie_owner_password (id, password) VALUES (1, '.');
INSERT INTO movie_owner_password (id, password) VALUES (2, '.');
INSERT INTO movie_owner_password (id, password) VALUES (3, '.');
INSERT INTO movie_owner_password (id, password) VALUES (4, '.');

INSERT INTO muff (handle, name) VALUES ('madsc', 'yashasvi');
INSERT INTO muff (handle, name) VALUES ('theone', 'sam');
INSERT INTO muff (handle, name) VALUES ('hucklecliff', 'robin');
INSERT INTO muff (handle, name) VALUES ('@Iamben', 'ben');

INSERT INTO muff_password (id, password) VALUES (1, '.');
INSERT INTO muff_password (id, password) VALUES (2, '.');
INSERT INTO muff_password (id, password) VALUES (3, '.');
INSERT INTO muff_password (id, password) VALUES (4, '.');




--
-- INSERT INTO follows (id1, id2) VALUES (1, 2);
-- INSERT INTO follows (id1, id2) VALUES (2, 3);
-- INSERT INTO follows (id1, id2) VALUES (3, 1);
-- INSERT INTO follows (id1, id2) VALUES (4, 1);
-- INSERT INTO follows (id1, id2) VALUES (4, 4);

INSERT INTO movie (name, movie_owner_id, duration) VALUES ('The Croods', 1, 90);
INSERT INTO movie (name, movie_owner_id, duration) VALUES ('Rear Window', 2, 100);
INSERT INTO movie (name, movie_owner_id, duration) VALUES ('Indiana Jones', 3, 123);
INSERT INTO movie (name, movie_owner_id, duration) VALUES ('Imitation Game', 4, 122);
INSERT INTO movie (name, movie_owner_id, duration) VALUES ('Birdman', 1, 140);
INSERT INTO movie (name, movie_owner_id, duration) VALUES ('Ironman 2',1, 140);
INSERT INTO movie (name, movie_owner_id, duration) VALUES ('Avengers 2.5', 1, 160);





INSERT INTO actor(id,name) VALUES (1,'Robert Downey');
INSERT INTO actor(id,name) VALUES (2,'Chris Evans');



INSERT INTO character(name,movie_id,actor_id) VALUES ('Tony Stark',7,1);
INSERT INTO character(name,movie_id,actor_id) VALUES ('Tony Stark',6,1);
INSERT INTO character(name,movie_id,actor_id) VALUES ('Steve Rogers',7,2);

-- INSERT INTO actor (name) VALUES ('Emma Stone');
-- INSERT INTO actor (name) VALUES ('Ryan Reynolds');
-- INSERT INTO actor (name) VALUES ('Bennedict Cumberbatch');
-- INSERT INTO actor (name) VALUES ('Micheal Keaton');
-- INSERT INTO actor (name) VALUES ('Stewart');
--
-- INSERT INTO character (name, movie_id) VALUES ('Jeff', 2);
-- INSERT INTO character (name, movie_id) VALUES ('Dr. Jones', 3);
-- INSERT INTO character (name, movie_id) VALUES ('Alan Turing', 4);
-- INSERT INTO character (name, movie_id) VALUES ('The guy', 1);
-- INSERT INTO character (name, movie_id) VALUES ('Belt', 1);
--
-- INSERT INTO muff_likes_actor (muff_id, actor_id) VALUES (1, 1);
-- INSERT INTO muff_likes_actor (muff_id, actor_id) VALUES (1, 2);
-- INSERT INTO muff_likes_actor (muff_id, actor_id) VALUES (1, 3);
-- INSERT INTO muff_likes_actor (muff_id, actor_id) VALUES (1, 4);
-- INSERT INTO muff_likes_actor (muff_id, actor_id) VALUES (2, 4);
-- INSERT INTO muff_likes_actor (muff_id, actor_id) VALUES (2, 1);
-- INSERT INTO muff_likes_actor (muff_id, actor_id) VALUES (2, 3);
-- INSERT INTO muff_likes_actor (muff_id, actor_id) VALUES (3, 1);
-- INSERT INTO muff_likes_actor (muff_id, actor_id) VALUES (3, 4);
-- INSERT INTO muff_likes_actor (muff_id, actor_id) VALUES (4, 2);
--
--
-- INSERT INTO muff_likes_character (muff_id, character_id) VALUES (1, 1);
-- INSERT INTO muff_likes_character (muff_id, character_id) VALUES (1, 3);
-- INSERT INTO muff_likes_character (muff_id, character_id) VALUES (1, 4);
-- INSERT INTO muff_likes_character (muff_id, character_id) VALUES (1, 5);
-- INSERT INTO muff_likes_character (muff_id, character_id) VALUES (2, 1);
-- INSERT INTO muff_likes_character (muff_id, character_id) VALUES (3, 3);