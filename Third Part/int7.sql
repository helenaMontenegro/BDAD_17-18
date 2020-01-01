.mode columns
.headers on
.nullvalue NULL

select Player.firstName as 'First Name', Player.lastName as 'Last Name', Team.name as Team,
Reason, Game.date as Date, Game.hour as Hour
from Player, PStartDate, Team, Game,

(select E1.idPlayer as p1, ET2.type as Reason, E1.idGame as g1
from Event E1, Event E2, EventType ET1, EventType ET2 where
E1.idType = ET1.idType and ET1.type = 'Expelled' and E2.idType = ET2.idType and
E1.idPlayer = E2.idPlayer and E1.idGame = E2.idGame and E1.seconds = E2.seconds and
(ET2.type = 'Foul' or ET2.type = 'Flagrant foul type 1' or 
ET2.type = 'Flagrant foul type 2'))

where Player.idPlayer = p1 and PStartDate.idPlayer = Player.idPlayer and
PStartDate.team = Team.idTeam and g1 = Game.idGame;
