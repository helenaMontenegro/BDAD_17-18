.mode columns
.headers on
.nullvalue NULL

select distinct R1.lastName as 'Referee 1', R2.lastName as 'Referee 2', 
R3.lastName as 'Referee 3', f1 as 'Foul', f2 as 'Type 1', f3 as 'Type 2' 
from Game, RefereeGame RG1, Referee R1, RefereeGame RG2, Referee R2, 
RefereeGame RG3, Referee R3,

(select Event.idGame as g1, count(*) as f1 
from Event NATURAL JOIN EventType
where EventType.type = 'Foul'
group by Event.idGame
UNION
select Event.idGame as g1, '0' as f1
from Event where Event.idGame not in
	(select Event.idGame from Event NATURAL JOIN EventType
	where EventType.type = 'Foul')),

(select Event.idGame as g2, count(*) as f2 
from Event NATURAL JOIN EventType
where EventType.type = 'Flagrant foul type 1'
group by Event.idGame
UNION
select Event.idGame as g2, '0' as f2
from Event where Event.idGame not in
	(select Event.idGame from Event NATURAL JOIN EventType
	where EventType.type = 'Flagrant foul type 1')),

(select Event.idGame as g3, count(*) as f3
from Event NATURAL JOIN EventType
where EventType.type = 'Flagrant foul type 2'
group by Event.idGame
UNION
select Event.idGame as g3, '0' as f3
from Event where Event.idGame not in
	(select Event.idGame from Event NATURAL JOIN EventType
	where EventType.type = 'Flagrant foul type 2'))

where R1.idReferee = RG1.referee and Game.idGame = RG1.game 
and R2.idReferee = RG2.referee and Game.idGame = RG2.game 
and R3.idReferee = RG3.referee and Game.idGame = RG3.game
and R1.idReferee > R2.idReferee and R2.idReferee > R3.idReferee 
and Game.idGame = g1 and Game.idGame = g2 and Game.idGame = g3
and Game.idGame in (select idGame from Event);