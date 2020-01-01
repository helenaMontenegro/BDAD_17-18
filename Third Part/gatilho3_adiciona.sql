Create Trigger NumberOfPlayers
Before Insert On Event
For Each Row
When(New.idType in 
	(select EventType.idType from EventType where EventType.idType = New.idType 
	and type = 'Start'))
Begin
Select Case
When((select count(*) as numPlayers from
	(select Event.idGame, Event.idPlayer as pl1, Team.idTeam as t1, Event.seconds as s1
	from Event, PStartDate P1, PStartDate P2, EventType, Team
	where Event.idGame = New.idGame
	and Team.idTeam = P1.team and P1.idPlayer = New.idPlayer
	and P2.idPlayer = Event.idPlayer and P2.team = Team.idTeam
	and EventType.type = 'Start' and EventType.idType = Event.idType
	and Event.seconds < New.seconds and not exists
	(select Event.seconds 
	 from Event, PStartDate, EventType where Event.idGame = 1
	 and PStartDate.team = t1 and PStartDate.idPlayer = pl1
	 and PStartDate.idPlayer = Event.idPlayer
	 and (EventType.type = 'Finish' or EventType.type = 'Expelled') and EventType.idType = Event.idType
	 and Event.seconds <= New.seconds and Event.seconds > s1))) >= 5)
	Then raise(rollback, 'There are already 5 players on court')
End;
End;