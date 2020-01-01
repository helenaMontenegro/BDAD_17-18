Create Trigger Elimination
After Insert On Event
For Each Row
When((New.idType in (select idType from EventType where type = 'Foul') and 
     New.idPlayer in 
      (select idPlayer from Event, EventType where Event.idType = EventType.idType
       and EventType.type = 'Foul' and Event.idGame = New.idGame group by Event.idPlayer 
       having count(*)>=6)) or

      (New.idType in (select idType from EventType where type = 'Flagrant foul type 1')
      and New.idPlayer in 
      (select idPlayer from Event, EventType where Event.idType = EventType.idType
       and EventType.type = 'Flagrant foul type 1' and Event.idGame = New.idGame 
       group by Event.idPlayer having count(*)>=2)) or 

      (New.idType in (select idType from EventType where type = 'Flagrant foul type 2'))
)
Begin
	Insert into Event (idGame, idPlayer, seconds, idType) values 
	 (New.idGame, New.idPlayer, 
		(select max(seconds) from Event, EventType 
		where idPlayer = New.idPlayer and idGame = new.idGame and
		Event.idType = EventType.idType and EventType.type = 'Foul'), 
	 (select idType from EventType where type = 'Expelled'));	
End;