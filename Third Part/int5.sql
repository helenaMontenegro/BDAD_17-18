.mode columns
.headers on
.nullvalue NULL

select P1.firstName as 'First Name', P1.lastName as 'Last Name',totPoints as 'Total Points'

from Player P1,
	
	(
		/* SELECTS THE BEST SCORER - START*/
		select p1, max(totPoints1) as totPoints 
		from
		(
			select Player.idPlayer as p1, sum(EventType.points) as totPoints1
			from EventType, Event, Player
			where p1 = Event.idPlayer and Event.idType = EventType.idType
			group by Player.idPlayer
		)
		/* SELECTS THE BEST SCORER - END*/

		UNION

		/* SELECTS THE SECOND BEST SCORER - START*/
		select p1, max(totPoints1) as totPoints
		from
		(
			select Player.idPlayer as p1, sum(EventType.points) as totPoints1
			from EventType, Event,Player
			where p1 = Event.idPlayer and Event.idType = EventType.idType
			group by Player.idPlayer

			EXCEPT

			select p1, max(totPoints1) as totPoints from
			(
				select Player.idPlayer as p1, sum(EventType.points) as totPoints1
				from EventType, Event, Player
				where p1 = Event.idPlayer and Event.idType = EventType.idType
				group by Player.idPlayer
			)
		)
		/* SELECTS THE SECOND BEST SCORER - END*/

		UNION

		/* SELECTS THE THIRD BEST SCORER - START*/
		select p1, max(totPoints1) as totPoints
		from
		(
			/* BEST SCORER*/
			select Player.idPlayer as p1, sum(EventType.points) as totPoints1
			from EventType, Event,Player
			where p1 = Event.idPlayer and Event.idType = EventType.idType
			group by Player.idPlayer

			EXCEPT
			select p1, totPoints from
			/* BEST AND SECOND BEST*/
			(
				/* BEST SCORER*/
				select p1, max(totPoints1) as totPoints
				from
				(
					select Player.idPlayer as p1, sum(EventType.points) as totPoints1
					from EventType, Event, Player
					where p1 = Event.idPlayer and Event.idType = EventType.idType
					group by Player.idPlayer
				)
					
				UNION

				/* SECOND BEST SCORER*/
				
				select p1, max(totPoints1) as totPoints from
				(
					select Player.idPlayer as p1, sum(EventType.points) as totPoints1
					from EventType, Event,Player
					where p1 = Event.idPlayer and Event.idType = EventType.idType
					group by Player.idPlayer

					EXCEPT

					select p1, max(totPoints1) as totPoints from
					(
						select Player.idPlayer as p1, sum(EventType.points) as totPoints1
						from EventType, Event, Player
						where p1 = Event.idPlayer and Event.idType = EventType.idType
						group by Player.idPlayer
					)
				)
			)
		)
		/* SELECTS THE THIRD BEST SCORER - END*/
	)


where P1.idPlayer = p1 and totPoints > 0
order by totPoints DESC;

