.mode columns
.headers on
.nullvalue NULL

select Player.firstName, Player.lastName, Team.name as team
from Player, Team, PStartDate
where Player.idPlayer not in (

select distinct idPlayer as idp from PStartDate, Game G
where G.idGame in (select idGame from Event) and
 (PStartDate.team = G.homeTeam or PStartDate.team = G.visitingTeam)
and not exists
(select idType from Event where G.idGame = Event.idGame and
Event.idPlayer = idp))

and Player.idPlayer = PStartDate.idPlayer and PStartDate.team = Team.idTeam
and Team.idTeam in (select team from PStartDate, Event where 
PStartDate.idPlayer = Event.idPlayer);