//dao.js
const sql = require('mssql')

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
        await sql.connect('Server=localhost,1433;Database=corbyn;User Id=Test;Password=Test;Encrypt=false')

        await sql.query("Insert INTO Files VALUES('" + fileName + "')")
        //console.dir(fileName)
    } 
        
    catch (err)       
    {
        console.log(err);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module.exports = 
{
    saveFile
}