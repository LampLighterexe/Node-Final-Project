//dao.js
const sql = require('mssql')
const CONNECTION = 'Server=localhost,1433;Database=corbyn;User Id=Test;Password=Test;Encrypt=false'
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
async function Insert(object, stars, comment)
{
    try {
        // make sure that any items are correctly URL encoded in the connection string
        await sql.connect('Server=localhost,1433;Database=corbyn;User Id=Test;Password=Test;Encrypt=false')
        //await sql.query("Insert INTO Object VALUES(4, 'Corbyn')")
        
        await sql.query("Insert INTO Rating VALUES(" + stars +  ",'" + comment + "','" + object + "')")

        console.dir(object + "," + stars + "," + comment)

    } catch (err) {
        console.log(err);
    }
}
*/
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
async function makeTeam(pokemon1, pokemon2, pokemon3, pokemon4, pokemon5, pokemon6, teamName)
{
    try
    {
        // make sure that any items are correctly URL encoded in the connection string
        await sql.connect(CONNECTION)

        await sql.query("Insert INTO Team VALUES(' " + teamName + " ',' " + pokemon1 + " ' , '" + pokemon2 + "', '" + pokemon3 + "', '" + pokemon4 + "', '" + pokemon5 + "', '" + pokemon6 + "')")
        console.dir("Pokemon Team inserted inserted")
    }
        
    catch (err)       
    {
        console.log(err);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
async function getPokemon()
{
    try
    {
        // make sure that any items are correctly URL encoded in the connection string
        await sql.connect(CONNECTION)

        var pokemonNames = await sql.query("Select pokedexName from Pokedex")
        console.dir("Selected pokemon names in dao")

        //console.log(pokemonNames)
        return pokemonNames;
    }
        
    catch (err)       
    {
        console.log(err);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module.exports = 
{
    makeTeam,
    getPokemon,
}
