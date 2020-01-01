select Event.idGame, Event.idPlayer, Event.idType, Event.seconds 
from Event, EventType where Event.idType = EventType.idType 
and EventType.type = 'Start';

--Inserting starting event when there are already 5 players of the same team on court
Insert into Event (idGame, idPlayer, idType, seconds) values (1, 17, 1, 200);

Select Event.idGame, Event.idPlayer, Event.idType, Event.seconds 
from Event, EventType where Event.idType = EventType.idType 
and EventType.type = 'Start';