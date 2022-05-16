//const express = require('express')
//const app = express()
const port = 3000
const cors = require('cors');
const bodyParser = require('body-parser');
const path = require('path');
const { domainToASCII } = require('url');
const dao = require('./dao.js')
const sql = require('mssql')

const express = require('express')
const multer  = require('multer');
const { SSL_OP_SSLEAY_080_CLIENT_DH_BUG } = require('constants');
const upload = multer({ dest: './public/data/uploads/' })

const app = express()
///////////////////////////////////////////////////////////
app.get('/gimme',(req, res) =>
  res.status(200).sendFile('file:///' + __dirname + '//public//')
  )
///////////////////////////////////////////////////////////
app.use(cors());
app.use(express.json());
app.use(express.static(path.resolve(__dirname + '/public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
///////////////////////////////////////////////////////////
app.get('/Insert',async (req,res) =>
{
  var object = req.query.object;
  var comment = req.query.comment;
  var numStars = req.query.numStars;

  console.log(object + "," + comment + "," + " " + numStars)
  
  await dao.Insert(object, numStars, comment)

  res.sendStatus(200)
})
///////////////////////////////// 
function random(min, max)
{
  return Math.floor(Math.random()  * max) + min;
}
/////////////////////////////////

///////////////////////////////////////////////////////////
app.get('/addMeme',async (req,res) =>
{
  //var id = req.query.id;
  
  await dao.saveMeme(req.query.memeURL)

  //console.log(req.query.memeURL)

  res.status(200).send()
});
///////////////////////////////////////////////////////////
//Memes page function for random memes
app.get('/gimmeMeme',async (req, res) =>
  {
    console.log("got to app.js")

    var url = await dao.getMeme()
    res.status(200).send(url)
  })
///////////////////////////////////////////////////////////
//Get for army names
app.get('/getPokemonNames',async (req, res) =>
  {
    var pokemonNames = await dao.getPokemon()

    //console.log(pokemonNames)
    res.status(200).send(pokemonNames)
    
    console.log('pokemon names app.js')
  })
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Get needed info for fighting armies
app.get('/getArmyPower',async (req, res) =>
  {
    var armyName = req.query.armyName;
    console.log(armyName)

    var totalPower = await dao.getArmyPower(armyName)

    console.log(totalPower )

    res.status(200).send(totalPower.toString())
    
  })
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Save army battle
app.get('/saveBattle',async (req, res) =>
  {
    var battleName = req.query.battleName;
    var army1 = req.query.army1;
    var army2 = req.query.army2;
    var result = req.query.result;
    console.log("App.js for save battle")
    console.log(battleName)
		console.log(army1)
		console.log(army2)
		console.log(result)

    await dao.saveBattle(battleName, army1, army2, result) 
  })
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Pokemon Team Add
app.get('/makeTeam',async (req, res) =>
  {
    //await sql.connect('Server=localhost,1433;Database=corbyn;User Id=Test;Password=Test;Encrypt=false')

    var pokemon1 = req.query.pokemon1;
    var pokemon2 = req.query.pokemon2;
    var pokemon3 = req.query.pokemon3;
    var pokemon4 = req.query.pokemon4;
    var pokemon5 = req.query.pokemon5;
    var pokemon6 = req.query.pokemon6;

    console.log("make team App.js")
    console.log(pokemon1)
		console.log(pokemon2)
    console.log(pokemon3)
    console.log(pokemon4)
    console.log(pokemon5)
    console.log(pokemon6)

    await dao.makeTeam(pokemon1, pokemon2, pokemon3, pokemon4, pokemon5, pokemon6)
  })
app.listen(port, () => 
{
  console.log(`Server listening at http://localhost:${port}`)


  

})
