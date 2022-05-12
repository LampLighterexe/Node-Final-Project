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
async function saveFile(fileName)
{
    try
    {
        // make sure that any items are correctly URL encoded in the connection string
        await sql.connect(CONNECTION)

        await sql.query("Insert INTO Files VALUES('" + fileName + "')")
        console.log('save Meme DAO')
        console.dir(fileName)
    } 
        
    catch (err)       
    {
        console.log(err);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
async function makeArmy(armyName, warlordName, infantry, cavarly, airforce)
{
    if(airforce == true)
    {
        airforce = 0;
    }
    else
    {
        airforce = 1;
    }
    console.log('Airforce: ' + airforce)
    try
    {
        // make sure that any items are correctly URL encoded in the connection string
        await sql.connect(CONNECTION)

        await sql.query("Insert INTO Army VALUES(' " + armyName + " ',' " + warlordName + " ' , " + infantry + ", " + cavarly + ", " + airforce + " )")
        console.dir("Make Army inserted")
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

        console.log(pokemonNames.recordset[0].pokedexName)
        return pokemonNames.recordset[0].pokedexName;
    }
        
    catch (err)       
    {
        console.log(err);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function random(min, max)
{
	return Math.floor(Math.random()  * max) + min;
}

async function getArmyPower(armyName)
{
    try
    {
        // make sure that any items are correctly URL encoded in the connection string
        await sql.connect(CONNECTION)

        var infantryNum = await sql.query("Select Infantry From Army Where armyName =  '" + armyName + "'")
        var cavalryNum = await sql.query("Select Cavalry From Army Where armyName =  '" + armyName + "'")
        var AirForce = await sql.query("Select AirForce From Army Where armyName =  '" + armyName + "'")
        
        var Infantry = infantryNum.recordset[0].Infantry
        var Cavarly = cavalryNum.recordset[0].Cavalry

        console.log("Selected Power Information")
        console.log("Infantry: " + Infantry)
        console.log("Cavarly: " + Cavarly)
        console.log("Airforce: " + AirForce.recordset[0].AirForce)

        

        var totalPower = random(0, 10) * Number(Infantry) + random(0, 10) * 3.0 * Number(Cavarly);

		if (AirForce == true)
		{
			totalPower += random(0, 10) * 9000.0;
		}	

        console.log("Total power: " + totalPower)
        return totalPower
    }
        
    catch (err)       
    {
        console.log(err);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
async function saveBattle(battleName, army1, army2, result)
{
    try
    {
        // make sure that any items are correctly URL encoded in the connection string
        await sql.connect(CONNECTION)

        await sql.query("Insert INTO Battles VALUES(' " + battleName + " ',' " + army1 + " ' , '" + army2 + "', '" + result + "' )")
        console.dir("Save battle into sql")
    }
        
    catch (err)       
    {
        console.log(err);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
async function saveMeme(memeURL)
{
    try
    {
        // make sure that any items are correctly URL encoded in the connection string
        await sql.connect(CONNECTION)

        await sql.query("Insert INTO MemeURLs VALUES('" + memeURL + "')")
        console.dir(memeURL)
    } 
        
    catch (err)       
    {
        console.log(err);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
async function getMeme()
{
    console.log("got to dao")
    try
    {
        await sql.connect(CONNECTION)
        //var memeID = await sql.query("Select memeID From MemeURLs")
        // var memeURL = (await sql.query("Select memeURL From MemeURLs")).recordset[0].memeURL
        //console.dir(memeID)
        //console.dir(memeURL)

        var maxID = await sql.query("Select MAX(memeID) as maxIDSQL From MemeURLs")

        console.log("max ID: " + maxID.recordset[0].maxIDSQL)

        var randomID = random(0,parseInt(maxID.recordset[0].maxIDSQL));
        console.log("Random ID: " + randomID)

        var selectedMeme = await sql.query("Select memeURL From MemeURLs Where memeID ='" +  randomID + "'")
    
        //res.status(200).send('<img src=" '+ selectedMeme +' " alt="Meme">')
        return selectedMeme;
    } 
        
    catch (err)       
    {
        console.log(err);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module.exports = 
{
    saveFile,
    makeArmy,
    getArmyPower,
    saveBattle,
    getMeme,
    saveMeme,
    getPokemon,
}
