INSERT INTO artists(name)
	VALUES('Green Day'),
	('Metallica'),
	('30 Seconds to Mars'),
	('Shpongle'),
	('Lady Gaga'),
	('LP'),
	('Grimes'),
	('Crystal Castles');
	
INSERT INTO genres(name)
	VALUES ('Rock'),
	('Pop'),
	('Psytrance'),
	('Electronic'),
	('Metal');

INSERT INTO albums(name, year)
	VALUES('America', 2018),
	('Chromatica', 2020),
	('Tales of the Inexpressible', 2001),
	('Master of Puppets', 1986),
	('Churches', 2021),
	('Visions', 2012),
	('Amnesty (I)', 2016),
	('American Idiot', 2004);

INSERT INTO tracks(name, duration, album_id)
	VALUES ('Rescue me', 218, 1),
	('Love is madness', 234, 1),
	('Stupid Love', 194, 2),
	('Plastic doll', 222, 2),
	('My Head Feels Like a Frisbee', 533, 3),
	('Around the World in a Tea Daze', 682, 3),
	('Battery', 312, 4),
	('Damage Inc.', 308, 4),
	('The One That You Love', 224, 5),
	('Angels', 220, 5),
	('Symphonia IX (My Wait Is U)', 293, 6),
	('Genesis', 255, 6),
	('Char', 188, 7),
	('Concrete', 196, 7),
	('Wake Me Up When September Ends', 286, 8),
	('Holiday / Boulevard of Broken Dreams', 494, 8);

INSERT INTO collections(name, year)
	VALUES('Cool rock tracks', 2019),
	('Cool electronic tracks', 2021),
	('Best of Lady Gaga''s "Chromatica"', 2020),
	('Psy tracks', 2005),
	('Green Day hits', 2022),
	('Tracks Where Girls Sing', 2020),
	('Tracks Where Boys Sing', 2020),
	('Random tracks', 2018);

INSERT INTO artistgenres(artist_id, genre_id)
	VALUES(1, 1),
	(3, 1),
	(3, 5),
	(4, 1),
	(5, 3),
	(6, 2),
	(7, 1),
	(7, 2),
	(8, 4),
	(9, 4);

INSERT INTO artistsalbums(artist_id, album_id)
	VALUES(1, 8),
	(3, 4),
	(4, 1),
	(5, 3),
	(6, 2),
	(7, 5),
	(8, 6),
	(9, 7);
	
INSERT INTO trackscollections(track_id, collection_id)
	VALUES(2, 6),
	(2, 12),
	(2, 13),
	(3, 6),
	(3, 12),
	(4, 8),
	(4, 11),
	(5, 8),
	(5, 12),
	(5, 13),
	(6, 9),
	(6, 12),
	(6, 13),
	(7, 9),
	(8, 6),
	(8, 12),
	(9, 6),
	(9, 12),
	(10, 6),
	(10, 11),
	(11, 11),
	(12, 7),
	(12, 11),
	(12, 13),
	(13, 7),
	(13, 11),
	(14, 7),
	(14, 13),
	(15, 7),
	(16, 6),
	(16, 10),
	(16, 12),
	(17, 6),
	(17, 10),
	(17, 12),
	(17, 13);

INSERT INTO tracks(name, duration, album_id)
	VALUES('Trackname', 123, null);

INSERT INTO trackscollections(track_id, collection_id)
	VALUES(18, null);


	