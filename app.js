const express = require('express')
const app = express()
const port = 3000
const cors = require('cors');
const bodyParser = require('body-parser');
const path = require('path');
const { domainToASCII } = require('url');
const dao = require('./dao.js')
const sql = require('mssql')
///////////////////////////////////////////////////////////
app.use(cors());
app.use(express.json());
app.use(express.static(path.resolve(__dirname + '/public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
///////////////////////////////////////////////////////////
app.get('/Ratings',async (req,res) =>
{
  console.log(await dao.test("Select * From Rating"))
});
///////////////////////////////////////////////////////////
app.listen(port, () => 
{
  console.log(`Server listening at http://localhost:${port}`)


  

})