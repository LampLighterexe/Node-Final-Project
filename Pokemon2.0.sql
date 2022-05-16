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
trainerID INT,
pokemon#1 varchar(20),
pokemon#2 varchar(20),
pokemon#3 varchar(20),
pokemon#4 varchar(20),
pokemon#5 varchar(20),
pokemon#6 varchar(20),
Foreign Key (trainerID)  References Trainer(id)
);
---------------------------------------------
		--Pokedex--
Create table Pokedex
(
pokedexNum INT,
pokedexName VARCHAR(20),
pokemonType VARCHAR(20),
);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
				--Pokedex Inserts--

--(Pokemon Number, Pokemon Name, Pokemon Type)
Insert into Pokedex Values(1, 'Bulbasaur', 'Grass/Poison')
Insert into Pokedex Values(2, 'Ivysaur', 'Grass/Poison')
Insert into Pokedex Values(3, 'Venusaur', 'Grass/Poison')
---------------------------------------------------------------------
Insert into Pokedex Values(4, 'Charmander', 'Fire')
Insert into Pokedex Values(5, 'Charmeleon', 'Fire')
Insert into Pokedex Values(6, 'Charizard', 'Fire/Flying')
---------------------------------------------------------------------
Insert into Pokedex Values(7, 'Squirtle', 'Water')
Insert into Pokedex Values(8, 'Wartortle', 'Water')
Insert into Pokedex Values(9, 'Blastoise', 'Water')
---------------------------------------------------------------------
Insert into Pokedex Values(10, 'Caterpie', 'Bug')
Insert into Pokedex Values(11, 'Metapod', 'Bug')
Insert into Pokedex Values(12, 'Butterfree', 'Bug/Flying')
---------------------------------------------------------------------
Insert into Pokedex Values(13, 'Weedle', 'Bug/Poison')
Insert into Pokedex Values(14, 'Kakuna', 'Bug/Poison')
Insert into Pokedex Values(15, 'Beedrill', 'Bug/Poison')
---------------------------------------------------------------------
Insert into Pokedex Values(16, 'Pidgey', 'Flying/Normal')
Insert into Pokedex Values(17, 'Pidgeotto', 'Flying/Normal')
Insert into Pokedex Values(18, 'Pidgeot', 'Flying/Normal')
---------------------------------------------------------------------
Insert into Pokedex Values(19, 'Rattata', 'Normal')
Insert into Pokedex Values(20, 'Raticate', 'Normal')
---------------------------------------------------------------------
Insert into Pokedex Values(21, 'Spearow', 'Normal/Flying')
Insert into Pokedex Values(22, 'Fearow', 'Normal/Flying')
---------------------------------------------------------------------
Insert into Pokedex Values(23, 'Ekans', 'Poison')
Insert into Pokedex Values(24, 'Arbok', 'Poison')
---------------------------------------------------------------------
Insert into Pokedex Values(25, 'Pikachu', 'Electric')
Insert into Pokedex Values(26, 'Raichu', 'Electric')
---------------------------------------------------------------------
Insert into Pokedex Values(27, 'Sandshrew', 'Ground')
Insert into Pokedex Values(28, 'Sandslash', 'Ground')
---------------------------------------------------------------------
Insert into Pokedex Values(29, 'Nidoran', 'Poison')
Insert into Pokedex Values(30, 'Nidorina', 'Poison')
Insert into Pokedex Values(31, 'Nidoqueen', 'Poison')
---------------------------------------------------------------------
Insert into Pokedex Values(32, 'Nidoran', 'Poison')
Insert into Pokedex Values(33, 'Nidorino', 'Poison')
Insert into Pokedex Values(34, 'Nidoking', 'Poison')
---------------------------------------------------------------------
Insert into Pokedex Values(35, 'Clefairy', 'Fairy')
Insert into Pokedex Values(36, 'Clefable', 'Fairy')
---------------------------------------------------------------------
Insert into Pokedex Values(37, 'Vulpix', 'Fire')
Insert into Pokedex Values(38, 'Ninetales', 'Fire')
---------------------------------------------------------------------
Insert into Pokedex Values(39, 'Jigglypuff', 'Normal/Fairy')
Insert into Pokedex Values(40, 'Wigglytuff', 'Normal/Fairy')
---------------------------------------------------------------------
Insert into Pokedex Values(41, 'Zoobat', 'Poison/Flying')
Insert into Pokedex Values(42, 'Golbat', 'Poison/Flying')
---------------------------------------------------------------------
Insert into Pokedex Values(43, 'oddish', 'Grass/Poison')
Insert into Pokedex Values(44, 'Gloom', 'Grass/Poison')
Insert into Pokedex Values(45, 'Vileplume', 'Grass/Poison')
---------------------------------------------------------------------
Insert into Pokedex Values(46, 'Paras', 'Bug/Grass')
Insert into Pokedex Values(47, 'Parasect', 'Bug/Grass')
---------------------------------------------------------------------
Insert into Pokedex Values(48, 'Venonat', 'Bug/Poison')
Insert into Pokedex Values(49, 'Venomoth', 'Bug/Poison')
---------------------------------------------
				--Team Inserts--

--(Trainer ID, Pokemon 1-6)
Insert into Team Values(0, 'Pikachu', 'Butterfree', 'Pidgeotto', 'Bulbasaur', 'Charizard', 'Squirtle')
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
				--Table Selects--

--Select
Select * From Team
Select * From Pokedex
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--truncate table Team
