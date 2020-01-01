--List of games to be played
.mode columns
.headers on
.nullvalue NULL

select date, hour, T1.name as homeTeam, T2.name as visitingTeam
from Game, Team T1, Team T2
where Game.idGame not in (select idGame from Event) and T1.idTeam = Game.homeTeam
and T2.idTeam = Game.visitingTeam
order by Game.date, Game.hour;