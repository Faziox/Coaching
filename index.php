<!DOCTYPE html>
<?php
	require("connect.php");
?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/bootstrap.min.css">
    <link rel="stylesheet" href="style/style.css">
</head>

<body>
<script>
	var postyy = new Array();		//deklaracja tablic
	var headery = new Array();
	var texty = new Array();
	var date = new Array();
	var ID = new Array();
</script>
<?php
					$q = "SELECT * FROM posty";
					$zap = $conn->query($q);
					
					while ($tab = $zap->fetch_assoc())
					{
						$header = $tab["header"];
						$text = $tab["text"];
						$date = $tab["date"];
						$id = $tab["id"];
						
						
						echo "<script> var post = {id: '".$id."', header:'".$header."', text:'".$text."', date:'".$date."'};
								postyy.push(post);
								
						</script>";
					}
					
					
					
				
				?>

    <section class="container"></section>
    <section class="container" id="panel">
        <div class="row">
            <div class="col-sm-3">
                <ul>
                    <li><button id="add">Dodaj</button></li>
                    <li><button id="remove">Usuń</button></li>
                    <li><button id="view">Podgląd</button></li>
                </ul>
            </div>
            <div class="col-sm-3">
                    <label for="">Wybierz Post</label>
                    <select id="posty">
                    </select>
            </div>
			
            <div class="col-sm-6" id="panelBox">
				<form action="dupxo.php" method="post"> <!--form dodawania start -->
					<input id="heder" name="header">
					<input type="text" name = "text">
					<input type="submit">
				</form>									<!--//form end -->
				
				<form id = "form2"action="modyfikuj.php" method="post"> <!--//form modyfikacji  start -->
					<input id="heder" name="header">
					<input type="text" name = "text">
					<input type="submit" name = "id" class = "klasa" >
				</form>  								<!--//form end -->



				
            </div>
			
        </div>
    </section>
    <section class="container">
        <header><h1>Podgląd</h1></header>
		
				
				
				
					
					
				
				
				
				<script>
														//petla do postow
					
				postyy.forEach(element =>{
					headery.push(element["header"]);
					texty.push(element["text"]);
					date.push(element["date"]);
					ID.push(element["id"]);
				})
				
				
					
				</script>
        <article id="bodyBlog"></article>
    </section>


    <footer></footer>











    <script src="script/jquery.min.js"></script>
    <script src="script/bootstrap.js"></script>
    <script src="script/posty.js"></script>
    <script src="script/przyciski.js"></script>
  
</body>

</html>