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
app.post('/profile', upload.single('avatar'), function (req, res, next) {
  //await dao.saveFile(req.file.filename)
  dao.saveFile(req.file.filename)
  // req.file is the `avatar` file
  // req.body will hold the text fields, if there were any
  res.status(200).send()
})
///////////////////////////////////////////////////////////
app.post('/photos/upload', upload.array('photos', 12), function (req, res, next) {
  // req.files is array of `photos` files
  // req.body will contain the text fields, if there were any
})
///////////////////////////////////////////////////////////
const cpUpload = upload.fields([{ name: 'avatar', maxCount: 1 }, { name: 'gallery', maxCount: 8 }])
app.post('/cool-profile', cpUpload, function (req, res, next) {
  // req.files is an object (String -> Array) where fieldname is the key, and the value is array of files
  //
  // e.g.
  //  req.files['avatar'][0] -> File
  //  req.files['gallery'] -> Array
  //
  // req.body will contain the text fields, if there were any
})
///////////////////////////////////////////////////////////
app.post('/stats', upload.single('uploaded_file'), function (req, res) {
   // req.file is the name of your file in the form above, here 'uploaded_file'
   // req.body will hold the text fields, if there were any 
   console.log(req.file, req.body)
});
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
//Army Builder
app.get('/makeArmy',async (req, res) =>
  {
    //await sql.connect('Server=localhost,1433;Database=corbyn;User Id=Test;Password=Test;Encrypt=false')

    var armyName = req.query.armyName;
    var warlordName = req.query.warlordName;
    var infantry = req.query.infantry;
    var cavarly = req.query.cavarly;
    var airforce = req.query.airforce;
    console.log("App.js")
    console.log(armyName)
		console.log(warlordName)
		console.log(infantry)
		console.log(cavarly)
		console.log(airforce)

    await dao.makeArmy(armyName, warlordName, infantry, cavarly, airforce)
  })
app.listen(port, () => 
{
  console.log(`Server listening at http://localhost:${port}`)


  

})
