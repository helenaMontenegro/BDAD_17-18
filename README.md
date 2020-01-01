# BDAD 2017/2018

Curricular Unity: BDAD - Databases <br>
Lective Year: 2017/2018

Programming Languages used: SQL

Developed in collaboration with *Pedro Miguel Silva* and *Scutelnicu Petru*.

## Project - NBA

We developed a database to save all the information about one season of tournaments for NBA. It's objective is to keep track of every event (shots, fouls, rebounds and assists) that happens at each instance of each game as well as any information needed to create statistics about players and teams.

We developed the following triggers:

* InvalidEvents: it doesn't allow any insert of an event made by a player who is not at the game at the time the event was made.
* Elimination: it expels a player from the game if he has achieved his sixth foul, his second flagrant foul type 1 or a flagrant foul type 1.
* Number of Players: it makes sure that there are only 5 players of each team in the game in all instances.

The project is further documented in [here](https://github.com/helenaMontenegro/BDAD_17-18/blob/master/Third%20Part/Report.pdf).
