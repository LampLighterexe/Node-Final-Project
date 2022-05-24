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
Insert into Pokedex Values('Meowth', 'Normal', 'null')
Insert into Pokedex Values('Persian', 'Normal', 'null')
---------------------------------------------
Insert into Pokedex Values('Psyduck', 'Water', 'null')
Insert into Pokedex Values('Golduck', 'Water', 'null')
---------------------------------------------
Insert into Pokedex Values('Mankey', 'Fighting', 'null')
Insert into Pokedex Values('Primeape', 'Fighting', 'null')
---------------------------------------------
Insert into Pokedex Values('Growlithe', 'Fire', 'null')
Insert into Pokedex Values('Arcanine', 'Fire', 'null')
---------------------------------------------
Insert into Pokedex Values('Poliwag', 'Water', 'null')
Insert into Pokedex Values('Poliwhirl', 'Water', 'null')
Insert into Pokedex Values('Poliwrath', 'Water', 'Fighting')
---------------------------------------------
Insert into Pokedex Values('Abra', 'Psychic', 'null')
Insert into Pokedex Values('Kadabra', 'Psychic', 'null')
Insert into Pokedex Values('Alakazam', 'Psychic', 'null')
---------------------------------------------
Insert into Pokedex Values('Machop', 'Fighting', 'null')
Insert into Pokedex Values('Machoke', 'Fighting', 'null')
Insert into Pokedex Values('Machamp', 'Fighting', 'null')
---------------------------------------------
Insert into Pokedex Values('Bellsprout', 'Grass', 'Poison')
Insert into Pokedex Values('Weepinbell', 'Grass', 'Poison')
Insert into Pokedex Values('Victreebel', 'Grass', 'Poison')
---------------------------------------------
Insert into Pokedex Values('Tentacool', 'Water', 'Poison')
Insert into Pokedex Values('Tentacurel', 'Water', 'Poison')
---------------------------------------------
Insert into Pokedex Values('Geodude', 'Rock', 'Ground')
Insert into Pokedex Values('Graveler', 'Rock', 'Ground')
Insert into Pokedex Values('Golem', 'Rock', 'Ground')
---------------------------------------------
Insert into Pokedex Values('Ponyta', 'Fire', 'null')
Insert into Pokedex Values('Rapidash', 'Fire', 'null')
---------------------------------------------
Insert into Pokedex Values('Slowpoke', 'Water', 'Psychic')
Insert into Pokedex Values('Slowbro', 'Water', 'Psychic')
---------------------------------------------
Insert into Pokedex Values('Magnemite', 'Electric', 'Steel')
Insert into Pokedex Values('Magneton', 'Electric', 'Steel')
---------------------------------------------
Insert into Pokedex Values('Farfetchd', 'Normal', 'Flying')
---------------------------------------------
Insert into Pokedex Values('Doduo', 'Normal', 'Flying')
Insert into Pokedex Values('Dodrio', 'Normal', 'Flying')
---------------------------------------------
Insert into Pokedex Values('Seel', 'Water', 'null')
Insert into Pokedex Values('Dewgong', 'Water', 'Ice')
---------------------------------------------
Insert into Pokedex Values('Grimer', 'Poison', 'null')
Insert into Pokedex Values('Muk', 'Poison', 'null')
---------------------------------------------
Insert into Pokedex Values('Shellder', 'Water', 'null')
Insert into Pokedex Values('Cloyster', 'Water', 'Ice')
---------------------------------------------
Insert into Pokedex Values('Gastly', 'Ghost', 'Poison')
Insert into Pokedex Values('Haunter', 'Ghost', 'Poison')
Insert into Pokedex Values('Gengar', 'Ghost', 'Poison')
---------------------------------------------
Insert into Pokedex Values('Onix', 'Rock', 'Ground')
---------------------------------------------
Insert into Pokedex Values('Drowzee', 'Psychic', 'null')
Insert into Pokedex Values('Hypno', 'Psychic', 'null')
---------------------------------------------
Insert into Pokedex Values('Krabby', 'Water', 'null')
Insert into Pokedex Values('Kingler', 'Water', 'null')
---------------------------------------------
Insert into Pokedex Values('Voltorb', 'Electric', 'null')
Insert into Pokedex Values('Electrode', 'Electric', 'null')
---------------------------------------------
Insert into Pokedex Values('Exeggcute', 'Grass', 'Psychic')
Insert into Pokedex Values('Exeggutor', 'Grass', 'Pychic')
---------------------------------------------
Insert into Pokedex Values('Cubone', 'Ground', 'null')
Insert into Pokedex Values('Marowak', 'Ground', 'null')
---------------------------------------------
Insert into Pokedex Values('Hitonlee', 'Fighting', 'null')
Insert into Pokedex Values('Hitmonchan', 'Fighting', 'null')
---------------------------------------------
Insert into Pokedex Values('Lickitung', 'Normal', 'null')
---------------------------------------------
Insert into Pokedex Values('Koffing', 'Poison', 'null')
Insert into Pokedex Values('Weezing', 'Poison', 'null')
---------------------------------------------
Insert into Pokedex Values('Rhyhorn', 'Ground', 'Rock')
Insert into Pokedex Values('Rhydon', 'Ground', 'Rock')
---------------------------------------------
Insert into Pokedex Values('Chansey', 'Normal', 'null')
---------------------------------------------
Insert into Pokedex Values('Tengela', 'Grass', 'null')
---------------------------------------------
Insert into Pokedex Values('Kangaskhan', 'Normal', 'null')
---------------------------------------------
Insert into Pokedex Values('Horsea', 'Water', 'null')
Insert into Pokedex Values('Seadra', 'Water', 'null')
---------------------------------------------
Insert into Pokedex Values('Goldeen', 'Water', 'null')
Insert into Pokedex Values('Seaking', 'Water', 'null')
---------------------------------------------
Insert into Pokedex Values('Staryu', 'Water', 'null')
Insert into Pokedex Values('Starmie', 'Water', 'Psychic')
---------------------------------------------
Insert into Pokedex Values('Mr. Mine', 'Psychic', 'Fairy')
---------------------------------------------
Insert into Pokedex Values('Scyther', 'Bug', 'Flying')
---------------------------------------------
Insert into Pokedex Values('Jynx', 'Ice', 'Psychic')
---------------------------------------------
Insert into Pokedex Values('Electabuzz', 'Electric', 'null')
---------------------------------------------
Insert into Pokedex Values('Magmar', 'Fire', 'null')
---------------------------------------------
Insert into Pokedex Values('Pinsir', 'Bug', 'null')
---------------------------------------------
Insert into Pokedex Values('Tauros', 'Normal', 'null')
---------------------------------------------
Insert into Pokedex Values('Magikarp', 'Water', 'null')
Insert into Pokedex Values('Gyarados', 'Water', 'Flying')
---------------------------------------------
Insert into Pokedex Values('Lapras', 'Water', 'Ice')
---------------------------------------------
Insert into Pokedex Values('Ditto', 'Normal', 'null')
---------------------------------------------
Insert into Pokedex Values('Eevee', 'Normal', 'null')
Insert into Pokedex Values('Vaporeon', 'Water', 'null')
Insert into Pokedex Values('Jolteon', 'Electric', 'null')
Insert into Pokedex Values('Flareon', 'Fire', 'null')
---------------------------------------------
Insert into Pokedex Values('Porygon', 'Normal', 'null')
---------------------------------------------
Insert into Pokedex Values('Omanyte', 'Rock', 'Water')
Insert into Pokedex Values('Omanstar', 'Rock', 'Water')
---------------------------------------------
Insert into Pokedex Values('Kabuto', 'Rock', 'Water')
Insert into Pokedex Values('Kabutops', 'Rock', 'Water')
---------------------------------------------
Insert into Pokedex Values('Aerodactyl', 'Rock', 'Flying')
---------------------------------------------
Insert into Pokedex Values('Snorlax', 'Normal', 'null')
---------------------------------------------
Insert into Pokedex Values('Articuno', 'Ice', 'Flying')
---------------------------------------------
Insert into Pokedex Values('Zapdos', 'Electric', 'Flying')
---------------------------------------------
Insert into Pokedex Values('Moltres', 'Fire', 'Flying')
---------------------------------------------
Insert into Pokedex Values('Dratini', 'Dragon', 'null')
Insert into Pokedex Values('Dragonair', 'Dragon', 'null')
Insert into Pokedex Values('Dragonite', 'Dragon', 'Flying')
---------------------------------------------
Insert into Pokedex Values('Mewtwo', 'Psychic', 'null')
---------------------------------------------
Insert into Pokedex Values('Mew', 'Psychic', 'null')
---------------------------------------------
Insert into Pokedex Values('MissingNo', 'null', 'null')
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
