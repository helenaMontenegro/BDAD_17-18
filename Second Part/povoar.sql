--
-- File generated with SQLiteStudio v3.1.1 on dom abr 15 19:43:15 2018
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Arena
INSERT INTO Arena (name, state, city, capacity) VALUES ('TD Garden', 'Massachusetts', 'Boston', 18.624);
INSERT INTO Arena (name, state, city, capacity) VALUES ('Air Canada Centre', 'Ontario', 'Toronto', 19.8);
INSERT INTO Arena (name, state, city, capacity) VALUES ('Staples Center', 'California', 'Los Angeles', 19.06);
INSERT INTO Arena (name, state, city, capacity) VALUES ('Toyota Center', 'Texas', 'Houston', 18.055);

-- Table: Coach
INSERT INTO Coach (idCoach, firstName, lastName, country, birthDate) VALUES (11, 'Dwane', 'Casey', 'Indiana', '1957-04-17');
INSERT INTO Coach (idCoach, firstName, lastName, country, birthDate) VALUES (12, 'Alex', 'McKechnie', 'Scotland', '1952-03-12');
INSERT INTO Coach (idCoach, firstName, lastName, country, birthDate) VALUES (13, 'Brad', 'Stevens', 'Indiana', '1976-10-22');
INSERT INTO Coach (idCoach, firstName, lastName, country, birthDate) VALUES (14, 'Jerome', 'Allen', 'Pennsylvania', '1973-01-28');
INSERT INTO Coach (idCoach, firstName, lastName, country, birthDate) VALUES (15, 'Mike', 'D`Antoni', 'West Virginia', '1951-05-08');
INSERT INTO Coach (idCoach, firstName, lastName, country, birthDate) VALUES (16, 'Roy', 'Roggers', 'Alabama', '1973-08-19');
INSERT INTO Coach (idCoach, firstName, lastName, country, birthDate) VALUES (17, 'Doc', 'Rivers', 'Illionis', '1961-10-13');
INSERT INTO Coach (idCoach, firstName, lastName, country, birthDate) VALUES (18, 'Armond', 'Hill', 'Brooklyn', '1953-03-31');
INSERT INTO Coach (idCoach, firstName, lastName, country, birthDate) VALUES (19, 'Luke', 'Walton', 'California', '1980-03-28');
INSERT INTO Coach (idCoach, firstName, lastName, country, birthDate) VALUES (20, 'Jude', 'Buechler', 'California', '1968-06-19');

-- Table: CStartDate
INSERT INTO CStartDate (idCoach, team, date, position) VALUES (16, 5, '2016-07-07', 'Assistant Coach');
INSERT INTO CStartDate (idCoach, team, date, position) VALUES (19, 4, '2016-02-02', 'Head Coach');
INSERT INTO CStartDate (idCoach, team, date, position) VALUES (18, 3, '2013-03-01', 'Assistant Coach');
INSERT INTO CStartDate (idCoach, team, date, position) VALUES (17, 3, '2013-06-09', 'Head Coach');
INSERT INTO CStartDate (idCoach, team, date, position) VALUES (15, 5, '2016-8-30', 'Head Coach');
INSERT INTO CStartDate (idCoach, team, date, position) VALUES (14, 1, '2015-02-24', 'Assistant Coach');
INSERT INTO CStartDate (idCoach, team, date, position) VALUES (13, 1, '2013-01-31', 'Head Coach');
INSERT INTO CStartDate (idCoach, team, date, position) VALUES (12, 2, '2013-05-04', 'Assistant Coach');
INSERT INTO CStartDate (idCoach, team, date, position) VALUES (11, 2, '2011-12-01', 'Head Coach');
INSERT INTO CStartDate (idCoach, team, date, position) VALUES (20, 4, '09-11-2016', 'Assistant Coach');

-- Table: Event
INSERT INTO Event (idEvent, seconds, type) VALUES (1, 0, 1);
INSERT INTO Event (idEvent, seconds, type) VALUES (2, 2880, 2);
INSERT INTO Event (idEvent, seconds, type) VALUES (3, 1000, 9);
INSERT INTO Event (idEvent, seconds, type) VALUES (4, 1100, 10);
INSERT INTO Event (idEvent, seconds, type) VALUES (5, 1200, 7);
INSERT INTO Event (idEvent, seconds, type) VALUES (6, 1300, 8);
INSERT INTO Event (idEvent, seconds, type) VALUES (7, 1400, 8);
INSERT INTO Event (idEvent, seconds, type) VALUES (8, 1000, 4);
INSERT INTO Event (idEvent, seconds, type) VALUES (9, 1100, 4);
INSERT INTO Event (idEvent, seconds, type) VALUES (10, 1201, 3);
INSERT INTO Event (idEvent, seconds, type) VALUES (11, 1500, 1);
INSERT INTO Event (idEvent, seconds, type) VALUES (12, 1500, 2);

-- Table: EventType
INSERT INTO EventType (type, idType) VALUES ('Start', 1);
INSERT INTO EventType (type, idType) VALUES ('Finish', 2);
INSERT INTO EventType (type, idType) VALUES ('Rebound', 3);
INSERT INTO EventType (type, idType) VALUES ('Assist', 4);
INSERT INTO EventType (type, idType) VALUES ('Turnover', 5);
INSERT INTO EventType (type, idType) VALUES ('Steal', 6);
INSERT INTO EventType (type, idType) VALUES ('Failed 3-pointer', 7);
INSERT INTO EventType (type, idType) VALUES ('Failed 2-pointer', 8);
INSERT INTO EventType (type, idType) VALUES ('Successful 3-pointer', 9);
INSERT INTO EventType (type, idType) VALUES ('Successful 2-pointer', 10);
INSERT INTO EventType (type, idType) VALUES ('Successful free throw', 11);
INSERT INTO EventType (type, idType) VALUES ('Failed free throw', 12);
INSERT INTO EventType (type, idType) VALUES ('Foul', 13);
INSERT INTO EventType (type, idType) VALUES ('Flagrant foul type 1', 14);
INSERT INTO EventType (type, idType) VALUES ('Flagrant foul type 2', 15);

-- Table: Game
INSERT INTO Game (idGame, date, hour, homeTeam, visitingTeam) VALUES (1, '2017-10-17', '20:30', 1, 2);
INSERT INTO Game (idGame, date, hour, homeTeam, visitingTeam) VALUES (2, '2018-10-09', '22:00', 2, 4);
INSERT INTO Game (idGame, date, hour, homeTeam, visitingTeam) VALUES (3, '2017-10-15', '20:30', 3, 1);
INSERT INTO Game (idGame, date, hour, homeTeam, visitingTeam) VALUES (4, '2017-10-18', '21:00', 4, 5);
INSERT INTO Game (idGame, date, hour, homeTeam, visitingTeam) VALUES (5, '2017-11-12', '20:30', 5, 1);

-- Table: Player
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (11, 'DeRozan', 'DeMar', 'USA', '1989-09-18', 'G', 2.01, 100, 10, 2013, 10);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (12, 'Miles', 'C.J', 'USA', '1987-10-15', 'C', 1.98, 102, 50, 2010, 0);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (13, 'Allen', 'Kadeem', 'USA', '1986-02-12', 'G', 1.91, 91, NULL, NULL, 45);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (14, 'Baynes', 'Aron', 'USA', '1986-12-09', 'C', 2.08, 118, 20, 2010, 46);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (15, 'Bird', 'Jabari', 'USA', '1994-08-17', 'G', 1.98, 90, 26, 2017, 26);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (16, 'Brown', 'Jaylen', 'USA', '1996-02-24', 'G/F', 2.01, 102, 12, 2016, 7);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (17, 'Gibson', 'Jonathan', 'USA', '1987-08-27', 'G', 1.88, 84, NULL, NULL, 60);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (18, 'Horforf', 'Al', 'USA', '1986-05-28', 'F/C', 2.08, 111, 19, 2012, 42);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (19, 'Larkin', 'Shane', 'USA', '1992-01-15', 'G', 1.8, 79, 28, 2015, 8);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (20, 'Monroe', 'Greg', 'USA', '1990-04-30', 'F/C', 2.11, 120, 2, 2012, 55);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (21, 'Morris', 'Marcus', 'USA', '1989-04-12', 'F', 2.06, 107, NULL, NULL, 13);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (22, 'Nader', 'Abdel', 'USA', '1993-12-25', 'F', 1.98, 104, 35, 2017, 28);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (23, 'Rozier', 'Terry', 'USA', '1994-01-30', 'G', 1.88, 86, NULL, NULL, 12);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (24, 'Silas', 'Xavier', 'USA', '1988-09-11', 'G', 1.96, 93, NULL, NULL, 9);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (25, 'Smart', 'Marcus', 'USA', '1994-07-03', 'G', 1.93, 100, 15, 2017, 36);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (26, 'Theis', 'Daniel', 'Germany', '1992-05-28', 'F/C', 2.06, 110, NULL, NULL, 27);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (27, 'Yabusele', 'Guerschon', 'France', '1995-12-17', 'F', 2.03, 118, 11, 2017, 30);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (28, 'Anderson', 'Ryan', 'USA', '1988-02-24', 'F', 1.91, 109, 2, 2010, 33);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (29, 'Ariza', 'Trevor', 'USA', '1985-06-30', 'G/F', 2.03, 98, 3, 2011, 1);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (30, 'Black', 'Tarik', 'USA', '1991-11-22', 'F/C', 2.06, 113, NULL, NULL, 28);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (31, 'Brown', 'Markel', 'USA', '1992-01-22', 'G', 1.91, 86, 7, 2013, 26);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (32, 'Capela', 'Clint', 'France', '1994-05-18', 'C', 2.08, 109, 40, 2017, 15);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (33, 'Gordon ', 'Eric', 'USA', '1988-12-25', 'G', 1.93, 98, NULL, NULL, 10);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (34, 'Green', 'Gerald', 'USA', '1986-01-26', 'G/F', 2.01, 93, NULL, NULL, 14);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (35, 'Johnson', 'Joe', 'USA', '1981-06-29', 'G/F', 2.01, 109, 26, 2004, 7);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (36, 'Nene', 'Pedro', 'Portugal', '1982-09-13', 'F/C', 2.11, 113, 11, 2004, 42);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (37, 'Bradley', 'Avery', 'USA', '1990-11-26', 'G', 1.88, 82, NULL, NULL, 11);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (38, 'Dekker', 'Sam', 'USA', '1990-01-21', 'F', 2.06, 104, NULL, NULL, 7);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (39, 'Evans', 'Jawun', 'USA', '1994-05-06', 'G', 1.83, 86, 34, 2017, 1);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (40, 'Gallinari', 'Danilo', 'Italy', '1988-08-08', 'F', 2.08, 102, 1, 2004, 8);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (41, 'Harrell', 'Montrezl', 'USA', '1994-01-26', 'F/C', 2.03, 109, 2, 2016, 5);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (42, 'Harris', 'Tobias', 'USA', '1992-07-15', 'F', 2.06, 107, 5, 2016, 34);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (43, 'Jordan', 'DeAndre', 'USA', '1988-07-21', 'C', 2.11, 120, 7, 2009, 6);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (44, 'Marjanovic', 'Boban', 'Serbia', '1987-03-19', 'C', 2.21, 132, 2, 2007, 51);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (45, 'Rivers', 'Austin', 'UK', '1992-08-01', 'G', 1.93, 91, 12, 2014, 25);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (46, 'Teodosic', 'Milos', 'Serbia', '1987-03-19', 'G', 1.96, 89, 2, 2008, 4);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (47, 'Ball', 'Lonzo', 'USA', '1997-10-27', 'G', 1.98, 86, 10, 2017, 2);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (48, 'Bryant', 'Thomas', 'USA', '1997-07-31', 'C', 2.08, 112, 5, 2017, 31);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (49, 'Caldwell-Pope', 'Kentavious', 'USA', '1993-02-19', 'G', 1.96, 93, NULL, NULL, 1);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (50, 'Caruso', 'Alex', 'USA', '1994-02-28', 'G', 1.96, 84, 3, 2016, 4);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (51, 'Deng', 'Luol', 'UK', '1987-03-19', 'F', 2.06, 100, NULL, NULL, 9);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (52, 'Ennis', 'Tyler', 'USA', '1994-02-21', 'G', 1.91, 88, 21, 2016, 10);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (53, 'Felicio', 'Cristiano', 'Spain', '1992-07-17', 'F/C', 2.06, 127, 25, 2015, 6);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (54, 'Holiday', 'Justin', 'USA', '1989-04-05', 'G/F', 1.98, 84, 2, 2011, 7);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (55, 'Kilpatrick', 'Sean', 'USA', '1990-01-06', 'G', 1.93, 95, 15, 2012, 0);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (56, 'Lopez', 'Robin', 'Brazil', '1988-04-01', 'C', 2.13, 126, 10, 2009, 424);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (57, 'Markkanen', 'Lauri', 'USA', '1997-05-22', 'F', 2.13, 104, 1, 2017, 24);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (58, 'Nwaba', 'David', 'Brazil', '1993-01-14', 'G', 1.93, 95, NULL, NULL, 11);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (59, 'Zipser', 'Paul', 'Germany', '1994-02-18', 'F', 2.03, 103, 1, 2016, 16);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (60, 'Valentine', 'Denzel', 'USA', '1993-11-16', 'F', 1.98, 97, 4, 2016, 45);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (61, 'Anunoby', 'Kevin', 'USA', '1997-07-17', 'F', 2.03, 107, 4, 2014, 3);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (62, 'Brown', 'Lorenzo', 'USA', '1990-08-26', 'G', 1.96, 86, 17, 2012, 4);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (63, 'Ibaka', 'Serge', 'Spain', '1989-08-07', 'F', 2.08, 107, NULL, NULL, 9);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (64, 'Lowry', 'Kyle', 'USA', '1986-03-25', 'G', 1.85, 88, 11, 2009, 7);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (65, 'McKinnie', 'Alfonzo', 'USA', '1992-09-17', 'F', 2.03, 98, 2, 2013, 34);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (66, 'Nogueira', 'Lucas', 'Brazil', '1992-07-26', 'C', 2.13, 109, 1, 2014, 92);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (67, 'Poltl', 'Jakob', 'USA', '1995-10-15', 'C', 2.13, 113, 10, 2016, 42);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (68, 'Siakam', 'Pascal', 'USA', '1994-04-02', 'F', 2.06, 104, NULL, NULL, 43);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (69, 'Valanciunas', 'Jonas', 'Lithuania', '1992-05-06', 'C', 2.13, 116, 2, 2015, 17);
INSERT INTO Player (idPlayer, firstName, lastName, country, birthDate, position, height, weight, draftRank, draftYear, number) VALUES (70, 'Wright', 'Delon', 'USA', '1992-04-26', 'G', 1.96, 86, 2, 2017, 55);

-- Table: PStartDate
INSERT INTO PStartDate (idPlayer, team, date) VALUES (11, 1, 2015);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (12, 1, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (13, 1, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (14, 1, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (15, 1, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (16, 1, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (17, 1, 2015);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (18, 1, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (19, 1, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (20, 1, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (21, 1, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (22, 1, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (23, 1, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (24, 1, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (25, 1, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (26, 2, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (27, 2, 2015);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (28, 2, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (29, 2, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (30, 2, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (31, 2, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (32, 2, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (33, 2, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (34, 2, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (35, 2, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (36, 2, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (37, 2, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (38, 3, 2014);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (39, 3, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (40, 3, 2015);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (41, 3, 2014);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (42, 3, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (43, 3, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (44, 3, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (45, 3, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (46, 3, 2014);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (47, 3, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (48, 4, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (49, 4, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (50, 4, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (51, 4, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (52, 4, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (53, 4, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (54, 4, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (55, 4, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (56, 4, 2015);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (57, 4, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (58, 4, 2014);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (59, 4, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (60, 4, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (61, 4, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (62, 5, 2014);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (63, 5, 2015);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (64, 5, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (65, 5, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (66, 5, 2017);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (67, 5, 2015);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (68, 5, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (69, 5, 2016);
INSERT INTO PStartDate (idPlayer, team, date) VALUES (70, 5, 2014);

-- Table: Referee
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (112, 'Harrison', 'Aaron', 'Canada', '1987-01-17');
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (113, 'Ferrel', 'Yogi', 'Germany', '1983-12-01');
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (114, 'Kleber', 'Maxi', 'Portugal', '1992-08-07');
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (115, 'Victor', 'Pedro', 'USA', '1988-10-23');
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (116, 'Mark', 'Helen', 'UK', '1989-12-21');
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (117, 'Spike', 'Mickey', 'USA', '1984-12-25');
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (118, 'Iosuf', 'Berron', 'USA', '1981-06-03');
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (119, 'Noel', 'Nerlens', 'USA', '1980-08-10');
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (120, 'Smith', 'Dennis', 'USA', '1990-03-21');
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (121, 'Jones', 'Jalen', 'USA', '1985-02-13');
INSERT INTO Referee (idReferee, firstName, lastName, country, birthDate) VALUES (122, 'Maker', 'Thon', 'USA', '1978-09-14');

-- Table: RefereeGame
INSERT INTO RefereeGame (referee, game) VALUES (112, 1);
INSERT INTO RefereeGame (referee, game) VALUES (113, 1);
INSERT INTO RefereeGame (referee, game) VALUES (115, 1);
INSERT INTO RefereeGame (referee, game) VALUES (119, 2);
INSERT INTO RefereeGame (referee, game) VALUES (112, 2);
INSERT INTO RefereeGame (referee, game) VALUES (117, 2);
INSERT INTO RefereeGame (referee, game) VALUES (113, 3);
INSERT INTO RefereeGame (referee, game) VALUES (112, 3);
INSERT INTO RefereeGame (referee, game) VALUES (118, 3);
INSERT INTO RefereeGame (referee, game) VALUES (113, 4);
INSERT INTO RefereeGame (referee, game) VALUES (112, 4);
INSERT INTO RefereeGame (referee, game) VALUES (118, 4);
INSERT INTO RefereeGame (referee, game) VALUES (113, 5);
INSERT INTO RefereeGame (referee, game) VALUES (112, 5);
INSERT INTO RefereeGame (referee, game) VALUES (118, 5);

-- Table: Stats
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 11, 1);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 12, 1);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 13, 1);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 14, 1);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 15, 1);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 26, 1);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 27, 1);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 28, 1);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 29, 1);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 30, 1);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 11, 2);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 12, 2);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 13, 2);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 14, 2);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 15, 2);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 26, 2);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 27, 2);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 28, 2);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 29, 2);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 30, 2);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 28, 3);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 29, 6);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 30, 8);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 11, 4);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 13, 7);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 14, 9);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 15, 10);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 25, 11);
INSERT INTO Stats (game, idPlayer, event) VALUES (1, 11, 12);

-- Table: Team
INSERT INTO Team (name, arena, idTeam) VALUES ('Boston Celtics', 'TD Garden', 1);
INSERT INTO Team (name, arena, idTeam) VALUES ('Toronto Raptors', 'Air Canada Centre', 2);
INSERT INTO Team (name, arena, idTeam) VALUES ('Los Angeles Clippers', 'Staples Center', 3);
INSERT INTO Team (name, arena, idTeam) VALUES ('Los Angeles Lakers', 'Staples Center', 4);
INSERT INTO Team (name, arena, idTeam) VALUES ('Houston Rockets', 'Toyota Center', 5);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
