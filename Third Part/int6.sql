.mode columns
.headers on
.nullvalue NULL

select EventType.type as 'event type', count(Event.idType) as 'count', Player.country from 

	(select max(A.CC), A.country, A.idType
	from 
	(
	select Player.country, count(Player.country) 'CC', Event.idType 
	from 
	PStartDate, Player, Event 
	where 
	PStartDate.idPlayer=Event.idPlayer and Event.idPlayer=Player.idPlayer 
	group by Event.idType, Player.country
	order by idType Asc
	) A 
	group by A.idType) B,Player,EventType,PStartDate,Event 

	where	
	B.idType=Event.idType and Event.idType=EventType.idType and PStartDate.idPlayer=Player.idPlayer 
	and Event.idPlayer=Player.idPlayer and Player.country=B.country
	
	group by Event.idType, Player.country;