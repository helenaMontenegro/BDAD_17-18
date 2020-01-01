select EventType.type as Type, round(avg(P1.height),3) as 'Average height', min(P1.height) as 'Smallest P', Max(P1.height) as 'Tallest P'
	from
Event, Player P1, EventType
	where
P1.idplayer=Event.idplayer and EventType.idType = Event.idType
	group by EventType.type;