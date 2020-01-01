.mode columns
.headers on
.nullvalue NULL

select Arena.name, count(distinct Event.idType) as eventsDiversity, 
mostPlayedEvent,
max(cMostPlayedEvent) as mostPlayedEventCount
from Arena, Game, Team, Event, EventType,

(select A.name as arenan, ET.type as mostPlayedEvent, count(*) as cMostPlayedEvent from 
Event E, Game G, Arena A,
Team T, EventType ET where E.idType = ET.idType and E.idGame = G.idGame
and G.homeTeam = T.idTeam and A.name = T.arena
group by ET.type)

where Event.idGame in
(select idGame from Game where Game.homeTeam = Team.idTeam and Arena.name = Team.arena)
and arenan = Arena.name
group by Arena.name
order by eventsDiversity;
