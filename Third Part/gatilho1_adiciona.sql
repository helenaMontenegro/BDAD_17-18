Create Trigger InvalidEvents
After Insert On Event
For Each Row
When(((exists(select seconds as st from Event, EventType where Event.idType = EventType.idType
	      and Event.idPlayer = New.idPlayer and Event.idGame = New.idGame
	      and EventType.type = 'Finish' and Event.seconds < New.seconds
              and not exists (select seconds from Event, EventType where 
		    Event.idType = EventType.idType
	            and Event.idPlayer = New.idPlayer and Event.idGame = New.idGame
	            and EventType.type = 'Start' and Event.seconds > st and 
		    Event.seconds < New.seconds))
	or not exists(select seconds from Event, EventType where Event.idType = EventType.idType
		and Event.idPlayer = New.idPlayer and Event.idGame = New.idGame
		and EventType.type = 'Start' and Event.seconds < New.seconds))
	and New.idType not in (select idType from EventType where type = 'Start'))
	
	or exists(select seconds from Event, EventType where Event.idType = EventType.idType
		and Event.idPlayer = New.idPlayer and Event.idGame = New.idGame
		and EventType.type = 'Expelled' and Event.seconds < New.seconds)

	or New.idPlayer not in (select PStartDate.idPlayer from PStartDate, Team, Game 
		where (Game.homeTeam = Team.idTeam or Game.visitingTeam = Team.idTeam)
		and PStartDate.team = Team.idTeam and Game.idGame = New.idGame))
Begin
	Select raise(rollback, 'invalid event');
End;