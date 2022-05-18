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
app.use(cors());
app.use(express.json());
app.use(express.static(path.resolve(__dirname + '/public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Get for pokemon names
app.get('/getPokemonNames',async (req, res) =>
  {
    var pokemonNames = await dao.getPokemon()

    //console.log(pokemonNames)
    res.status(200).send(pokemonNames)
    
    console.log('pokemon names app.js')
  })
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Get for pokemon teams
app.get('/getPokemonTeams',async (req, res) =>
  {
    var pokemonTeams = await dao.getTeams()

    //console.log(pokemonNames)
    res.status(200).send(pokemonTeams)
    
    console.log('pokemon Teams app.js')
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
    var teamName = req.query.teamName;

    console.log("make team App.js")
    console.log(teamName)
    console.log(pokemon1)
		console.log(pokemon2)
    console.log(pokemon3)
    console.log(pokemon4)
    console.log(pokemon5)
    console.log(pokemon6)

    await dao.makeTeam(pokemon1, pokemon2, pokemon3, pokemon4, pokemon5, pokemon6, teamName)
  })
app.listen(port, () => 
{
  console.log(`Server listening at http://localhost:${port}`)


  

})
