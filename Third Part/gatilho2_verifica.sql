select Event.idGame, Event.idPlayer, EventType.type, Event.seconds 
from Event, EventType
where Event.idType = EventType.idType and Event.idPlayer = 11 and 
Event.idGame = 1
order by seconds;

Insert into Event (idGame, idPlayer, idType, seconds) values (1, 11, 13, 100);
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 11, 13, 500);
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 11, 13, 1050);
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 11, 13, 2500);
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 11, 13, 2000);
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 11, 13, 250);

select Event.idGame, Event.idPlayer, EventType.type, Event.seconds 
from Event, EventType
where Event.idType = EventType.idType and Event.idPlayer = 11 and 
Event.idGame = 1
order by seconds;