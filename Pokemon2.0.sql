/*
drop table Team
drop table Pokedex
*/
--create database corbyn;
--go
use corbyn;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--Team--
Create table Team
(
trainerID INT Identity(1,1),
teamName varchar(40),
pokemon1 varchar(20),
pokemon2 varchar(20),
pokemon3 varchar(20),
pokemon4 varchar(20),
pokemon5 varchar(20),
pokemon6 varchar(20),
);
---------------------------------------------
		--Pokedex--
Create table Pokedex
(
pokedexNum INT Identity(1,1),
pokedexName VARCHAR(20),
pokemonType1 VARCHAR(20),
pokemonType2 VARCHAR(20),
);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
				--Pokedex Inserts--

--(Pokemon Name, Pokemon Type)
Insert into Pokedex Values('Bulbasaur', 'Grass', 'Poison')
Insert into Pokedex Values('Ivysaur', 'Grass', 'Poison')
Insert into Pokedex Values('Venusaur', 'Grass', 'Poison')
---------------------------------------------------------------------
Insert into Pokedex Values('Charmander', 'Fire', 'null')
Insert into Pokedex Values('Charmeleon', 'Fire', 'null')
Insert into Pokedex Values('Charizard', 'Fire', 'Flying')
---------------------------------------------------------------------
Insert into Pokedex Values('Squirtle', 'Water', 'null')
Insert into Pokedex Values('Wartortle', 'Water', 'null')
Insert into Pokedex Values('Blastoise', 'Water', 'null')
---------------------------------------------------------------------
Insert into Pokedex Values('Caterpie', 'Bug', 'null')
Insert into Pokedex Values('Metapod', 'Bug', 'null')
Insert into Pokedex Values('Butterfree', 'Bug', 'Flying')
---------------------------------------------------------------------
Insert into Pokedex Values('Weedle', 'Bug', 'Poison')
Insert into Pokedex Values('Kakuna', 'Bug', 'Poison')
Insert into Pokedex Values('Beedrill', 'Bug', 'Poison')
---------------------------------------------------------------------
Insert into Pokedex Values('Pidgey', 'Flying', 'Normal')
Insert into Pokedex Values( 'Pidgeotto', 'Flying', 'Normal')
Insert into Pokedex Values('Pidgeot', 'Flying', 'Normal')
---------------------------------------------------------------------
Insert into Pokedex Values('Rattata', 'Normal', 'null')
Insert into Pokedex Values('Raticate', 'Normal', 'null')
---------------------------------------------------------------------
Insert into Pokedex Values('Spearow', 'Normal', 'Flying')
Insert into Pokedex Values('Fearow', 'Normal', 'Flying')
---------------------------------------------------------------------
Insert into Pokedex Values('Ekans', 'Poison', 'null')
Insert into Pokedex Values('Arbok', 'Poison', 'null')
---------------------------------------------------------------------
Insert into Pokedex Values('Pikachu', 'Electric', 'null')
Insert into Pokedex Values('Raichu', 'Electric', 'null')
---------------------------------------------------------------------
Insert into Pokedex Values('Sandshrew', 'Ground', 'null')
Insert into Pokedex Values('Sandslash', 'Ground', 'null')
---------------------------------------------------------------------
Insert into Pokedex Values('Nidoran', 'Poison', 'null')
Insert into Pokedex Values('Nidorina', 'Poison', 'null')
Insert into Pokedex Values('Nidoqueen', 'Poison', 'null')
---------------------------------------------------------------------
Insert into Pokedex Values('Nidoran', 'Poison', 'null')
Insert into Pokedex Values('Nidorino', 'Poison', 'null')
Insert into Pokedex Values('Nidoking', 'Poison', 'null')
---------------------------------------------------------------------
Insert into Pokedex Values('Clefairy', 'Fairy', 'null')
Insert into Pokedex Values('Clefable', 'Fairy', 'null')
---------------------------------------------------------------------
Insert into Pokedex Values('Vulpix', 'Fire', 'null')
Insert into Pokedex Values('Ninetales', 'Fire', 'null')
---------------------------------------------------------------------
Insert into Pokedex Values('Jigglypuff', 'Normal', 'Fairy')
Insert into Pokedex Values('Wigglytuff', 'Normal', 'Fairy')
---------------------------------------------------------------------
Insert into Pokedex Values('Zoobat', 'Poison', 'Flying')
Insert into Pokedex Values('Golbat', 'Poison', 'Flying')
---------------------------------------------------------------------
Insert into Pokedex Values('oddish', 'Grass', 'Poison')
Insert into Pokedex Values('Gloom', 'Grass', 'Poison')
Insert into Pokedex Values('Vileplume', 'Grass', 'Poison')
---------------------------------------------------------------------
Insert into Pokedex Values('Paras', 'Bug', 'Grass')
Insert into Pokedex Values('Parasect', 'Bug', 'Grass')
---------------------------------------------------------------------
Insert into Pokedex Values('Venonat', 'Bug', 'Poison')
Insert into Pokedex Values('Venomoth', 'Bug', 'Poison')
---------------------------------------------------------------------
Insert into Pokedex Values('Diglett', 'Ground', 'null')
Insert into Pokedex Values('Dugtrio', 'Ground', 'null')
---------------------------------------------
				--Team Inserts--

--(Team Name, Pokemon 1-6)
Insert into Team Values('Team Pikachu', 'Pikachu', 'Pikachu', 'Pikachu', 'Pikachu', 'Pikachu', 'Pikachu')
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
				--Table Selects--

--Select
select * From Team
select * From Pokedex
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--truncate table Pokedex
--truncate table Team
