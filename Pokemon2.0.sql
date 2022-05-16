<!DOCTYPE html>
<html>

	<link rel="stylesheet" type="text/css" href="style.css">
	<style>
		a {
			color:rgb(176, 255, 176);
		}
		h1, h3{
			color:rgb(16, 17, 16);
}
	</style>

	<span><a href="http://localhost:3000/index.html">Index</a></span>

	<head>
		<title>Pokemon</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<Style>
        
        h1
        {
            font-size: 80px;
            -webkit-text-stroke:  1px rgb(7, 146, 170);
        }
        h2, h3 
        {
            color: rgb(7, 146, 170)
        }

		img 
        {
			border: 4px solid rgb(0, 0, 0);
			width: 400px;
            height: 300px;
			margin-left: auto;
            margin-right : auto;
            display: block;
		}
        
	</Style>
	</head>

	<body onload="dropdown()">
		<body style="background-image: url('https://images.unsplash.com/photo-1585314062604-1a357de8b000?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80'); background-size: cover">

		<h1 style="color:rgb(0, 11, 46);"><b><u><center>Pokemon</center></u></b></h1>

        <h3>Pick a pokemon to add to your team</h3>

        <select name="pokemon" id="pokemon">	</select>
	

	
	
	<script>	
/////////////////////////////////////////////////////////////////////////////////////////////////////
	function makeArmy()
	{
		var memeURL = document.getElementById("Input").value;
		console.log(memeURL)

		var xhr = new XMLHttpRequest();

		xhr.open("GET", "http://localhost:3000/addMeme?memeURL=" + memeURL)

		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		xhr.onreadystatechange = () =>{
			console.log(xhr.responseText)
		} 
		xhr.send()

		//document.getElementById('Input').value = ''
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////
function dropdown()
	{
		var xhr = new XMLHttpRequest();

		xhr.open("GET", "http://localhost:3000/getPokemonNames", true)

		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		
		xhr.onreadystatechange = () => 
		{
		
			if(XMLHttpRequest.DONE && xhr.status == 200)
			{
				var data = JSON.parse(xhr.responseText)
				console.log(data)
				var option = "";

					for(r in data.recordset)
					{
						//table += "<td>" + data.recordset[r].numStars + "</td>";
						option += "<option value = '" + data.recordset[r].pokemonName + "''>" + data.recordset[r].pokemonName + "</option>"
					}

					document.getElementById("pokemon").innerHTML = option;
			} 
		}
		xhr.send()
	}
		function update()
		{
		if (this.readyState == XMLHttpRequest.DONE && this.status == 200) {
			document.getElementById("output").innerHTML = this.responseText;
		}
		};
/////////////////////////////////////////////////////////////////////////////////////////////////////
		event.preventDefualt();
			
	</script>

	</body>
</html>
