.mode columns
.headers on
.nullvalue NULL

select Game.date, Game.hour, T1.name, hpoints, vpoints, T2.name
from Game, Team as T1, Team as T2,

(select Game.idGame as g1, sum(EventType.points) as hpoints from EventType, Event, Game, 
Team, PStartDate where Game.idGame = Event.idGame and EventType.idType = Event.idType 
and Game.homeTeam = Team.idTeam and Event.idPlayer = PStartDate.idPlayer and 
Team.idTeam = PStartDate.team
group by Game.idGame
UNION
select Game.idGame as g1, '0' as hpoints from Game where Game.idGame not in
(select Game.idGame from EventType, Event, Game, 
Team, PStartDate where Game.idGame = Event.idGame and EventType.idType = Event.idType 
and Game.homeTeam = Team.idTeam and Event.idPlayer = PStartDate.idPlayer and 
Team.idTeam = PStartDate.team)),

(select Game.idGame as g2, sum(EventType.points) as vpoints from EventType, Event, Game, 
Team, PStartDate where Game.idGame = Event.idGame and EventType.idType = Event.idType 
and Game.visitingTeam = Team.idTeam and Event.idPlayer = PStartDate.idPlayer and 
Team.idTeam = PStartDate.team
group by Game.idGame
UNION
select Game.idGame as g2, '0' as vpoints from Game where Game.idGame not in
(select Game.idGame from EventType, Event, Game, 
Team, PStartDate where Game.idGame = Event.idGame and EventType.idType = Event.idType 
and Game.visitingTeam = Team.idTeam and Event.idPlayer = PStartDate.idPlayer and 
Team.idTeam = PStartDate.team))

where Game.homeTeam = T1.idTeam and Game.visitingTeam = T2.idTeam and Game.idGame = g1
and Game.idGame = g2 and Game.idGame in (select idGame from Event);