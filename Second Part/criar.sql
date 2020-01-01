--
-- File generated with SQLiteStudio v3.1.1 on dom abr 15 19:39:18 2018
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Arena
DROP TABLE IF EXISTS Arena;

CREATE TABLE Arena (
    name     VARCHAR (35) PRIMARY KEY
                          NOT NULL,
    state    VARCHAR (30) NOT NULL,
    city     VARCHAR (30) NOT NULL,
    capacity INTEGER      NOT NULL
);

-- Table: Coach
DROP TABLE IF EXISTS Coach;

CREATE TABLE Coach (
    idCoach   INTEGER PRIMARY KEY
                      NOT NULL,
    firstName TEXT    NOT NULL,
    lastName  TEXT    NOT NULL,
    country   TEXT    NOT NULL,
    birthDate DATE    NOT NULL
);

-- Table: CStartDate
DROP TABLE IF EXISTS CStartDate;

CREATE TABLE CStartDate (
    idCoach  INTEGER REFERENCES Coach (idCoach) 
                     NOT NULL,
    team     INTEGER REFERENCES Team (idTeam) 
                     NOT NULL,
    date     DATE    NOT NULL,
    position TEXT    NOT NULL
                     CHECK (position = 'Head Coach' OR 
                            position = 'Assistant Coach'),
    PRIMARY KEY (
        idCoach,
        team
    )
);


-- Table: Event
DROP TABLE IF EXISTS Event;

CREATE TABLE Event (
    idEvent INTEGER PRIMARY KEY
                    NOT NULL,
    seconds INTEGER NOT NULL
                    CHECK (seconds >= 0),
    type    INTEGER NOT NULL
                    REFERENCES EventType (idType),
    UNIQUE (
        seconds,
        type
    )
);



-- Table: EventType
DROP TABLE IF EXISTS EventType;

CREATE TABLE EventType (
    type   TEXT    UNIQUE
                   NOT NULL,
    idType INTEGER PRIMARY KEY
                   NOT NULL
);



-- Table: Game
DROP TABLE IF EXISTS Game;

CREATE TABLE Game (
    idGame       INTEGER PRIMARY KEY
                         NOT NULL,
    date         DATE    NOT NULL,
    hour         TIME    NOT NULL,
    homeTeam     INTEGER NOT NULL
                         REFERENCES Team (idTeam),
    visitingTeam INTEGER NOT NULL
                         REFERENCES Team (idTeam),
    CHECK (homeTeam <> visitingTeam),
    UNIQUE (
        date,
        hour,
        homeTeam
    ),
    UNIQUE (
        date,
        hour,
        visitingTeam
    )
);


-- Table: Player
DROP TABLE IF EXISTS Player;

CREATE TABLE Player (
    idPlayer  INTEGER PRIMARY KEY
                      NOT NULL,
    firstName TEXT    NOT NULL,
    lastName  TEXT    NOT NULL,
    country   TEXT    NOT NULL,
    birthDate DATE    NOT NULL,
    position  TEXT    NOT NULL,
    height    FLOAT   NOT NULL
                      CHECK (height > 0),
    weight    FLOAT   NOT NULL
                      CHECK (weight > 0),
    draftRank INTEGER,
    draftYear INTEGER,
    number    INTEGER NOT NULL,
    UNIQUE (
        draftRank,
        draftYear
    )
);


-- Table: PStartDate
DROP TABLE IF EXISTS PStartDate;

CREATE TABLE PStartDate (
    idPlayer INTEGER REFERENCES Player (idPlayer) 
                     NOT NULL,
    team     INTEGER NOT NULL
                     REFERENCES Team (idTeam),
    date     DATE    NOT NULL,
    PRIMARY KEY (
        idPlayer,
        team
    )
);


-- Table: Referee
DROP TABLE IF EXISTS Referee;

CREATE TABLE Referee (
    idReferee INTEGER PRIMARY KEY
                      NOT NULL,
    firstName TEXT    NOT NULL,
    lastName  TEXT    NOT NULL,
    country   TEXT    NOT NULL,
    birthDate DATE    NOT NULL
);


-- Table: RefereeGame
DROP TABLE IF EXISTS RefereeGame;

CREATE TABLE RefereeGame (
    referee INTEGER NOT NULL
                    REFERENCES Referee (idReferee),
    game    INTEGER NOT NULL
                    REFERENCES Game (idGame),
    PRIMARY KEY (
        referee,
        game
    )
);



-- Table: Stats
DROP TABLE IF EXISTS Stats;

CREATE TABLE Stats (
    game     INTEGER NOT NULL
                     REFERENCES Game (idGame),
    idPlayer INTEGER NOT NULL
                     REFERENCES Player (idPlayer),
    event    INTEGER NOT NULL
                     REFERENCES Event (idEvent),
    PRIMARY KEY (
        game,
        idPlayer,
        event
    )
);



-- Table: Team
DROP TABLE IF EXISTS Team;

CREATE TABLE Team (
    name   TEXT    NOT NULL
                   UNIQUE,
    arena  TEXT    REFERENCES Arena (name) 
                   NOT NULL,
    idTeam INTEGER PRIMARY KEY
                   NOT NULL
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
