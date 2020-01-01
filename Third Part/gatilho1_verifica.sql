.mode columns
.headers on
.nullvalue NULL

select Event.idGame, Event.idPlayer, EventType.type, Event.seconds 
from Event, EventType
where Event.idType = EventType.idType and Event.idPlayer = 31 and 
Event.idGame = 1
order by seconds;

--inserting event before start event (error)
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 31, 4, 1200);

--inserting event after finish event (error)
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 31, 4, 2881);

--inserting start event after finish event (successful)
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 31, 1, 2881);

--inserting expelled event (successful)
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 31, 16, 3000);

--inserting event after expelled event (error)
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 31, 4, 3010);

--inserting event between start and finish events (successful)
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 31, 4, 1600);


select Event.idGame, Event.idPlayer, EventType.type, Event.seconds 
from Event, EventType
where Event.idType = EventType.idType and Event.idPlayer = 31 and 
Event.idGame = 1
order by seconds;

select Event.idGame, Event.idPlayer, EventType.type, Event.seconds 
from Event, EventType
where Event.idType = EventType.idType and Event.idPlayer = 61 and 
Event.idGame = 1
order by seconds;

--inserting start event by player who is not part of any team
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 61, 1, 1600);

select Event.idGame, Event.idPlayer, EventType.type, Event.seconds 
from Event, EventType
where Event.idType = EventType.idType and Event.idPlayer = 61 and 
Event.idGame = 1
order by seconds;