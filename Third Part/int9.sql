.mode columns
.headers on
.nullvalue NULL

select Team.name, gamesPlayed as 'number of games played', wins as 'number of wins'
from Team,
(select Team.idTeam as t1, count(*) as gamesPlayed
from Game, Team where (Team.idTeam = Game.homeTeam or Team.idTeam = Game.visitingTeam)
and Game.idGame in (select idGame from Event) group by Team.idTeam),

(select Team.idTeam as t2, count(*) as wins
from Team,


 --adapted from first query which gives us the games played with respective teams and points 

(select Game.idGame as idg, T1.idTeam as team1, hpoints, vpoints, T2.idTeam as team2
from Game, Team as T1, Team as T2,

(select Game.idGame as g1, sum(EventType.points) as hpoints from EventType, Event, Game, 
Team, PStartDate where Game.idGame = Event.idGame and EventType.idType = Event.idType 
and Game.homeTeam = Team.idTeam and Event.idPlayer = PStartDate.idPlayer and 
Team.idTeam = PStartDate.team
group by Game.idGame
UNION
select Game.idGame as g1, count(*) as hpoints from Game where Game.idGame not in
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
select Game.idGame as g2, count(*) as vpoints from Game where Game.idGame not in
(select Game.idGame from EventType, Event, Game, 
Team, PStartDate where Game.idGame = Event.idGame and EventType.idType = Event.idType 
and Game.visitingTeam = Team.idTeam and Event.idPlayer = PStartDate.idPlayer and 
Team.idTeam = PStartDate.team))

where Game.homeTeam = T1.idTeam and Game.visitingTeam = T2.idTeam and Game.idGame = g1
and Game.idGame = g2 and Game.idGame in (select idGame from Event))
where (Team.idTeam = team1 and hpoints > vpoints) or (Team.idTeam = team2 and hpoints < vpoints)
group by Team.idTeam


UNION

--checking if team is not on query above union and putting 0 wins in that case (code repeated)

select Team.idTeam as t2, '0' as wins from Team
where Team.idTeam not in (select Team.idTeam from Team,
(select Game.idGame as idg, T1.idTeam as team1, hpoints, vpoints, T2.idTeam as team2
from Game, Team as T1, Team as T2,

(select Game.idGame as g1, sum(EventType.points) as hpoints from EventType, Event, Game, 
Team, PStartDate where Game.idGame = Event.idGame and EventType.idType = Event.idType 
and Game.homeTeam = Team.idTeam and Event.idPlayer = PStartDate.idPlayer and 
Team.idTeam = PStartDate.team
group by Game.idGame
UNION
select Game.idGame as g1, count(*) as hpoints from Game where Game.idGame not in
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
select Game.idGame as g2, count(*) as vpoints from Game where Game.idGame not in
(select Game.idGame from EventType, Event, Game, 
Team, PStartDate where Game.idGame = Event.idGame and EventType.idType = Event.idType 
and Game.visitingTeam = Team.idTeam and Event.idPlayer = PStartDate.idPlayer and 
Team.idTeam = PStartDate.team))

where Game.homeTeam = T1.idTeam and Game.visitingTeam = T2.idTeam and Game.idGame = g1
and Game.idGame = g2 and Game.idGame in (select idGame from Event))
where (Team.idTeam = team1 and hpoints > vpoints) or (Team.idTeam = team2 and hpoints < vpoints)
group by Team.idTeam))


--where belonging to main query

where Team.idTeam = t1 and Team.idTeam = t2
order by wins;