<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acasa - Oltenita </title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="main.css">
<?php
require_once "functions.php";
isLogged();

$mysqli = new mysqli('localhost','root','','oltenita');

?>
<style type="text/css">
</style>
</head>
<header>
	Oltenita - oras de frontiera - Acasa <!-- -->
	<?php 
	if(isset($_SESSION['login'])&&$_SESSION['login']=='logged'&&isset($_SESSION['username'])&&!($_SESSION['username']==''))
	{
	?>
	<div class="divright" style="margin-right:3%">
	<form action="" method="post">
	<input name="elog" id="elog" type="hidden" value="0">
	<a href="register.php"><input type="submit" value="Deconecteaza-te!"></a>
	</form>
	<?php
	if(isset($_POST['elog']))
	{
		session_start();
		session_destroy();
		
		header('Location: index.php');
	}
	?>
	</div>
	<div class="divright" style="margin-right:2%"><?php echo $_SESSION['username']?></div>
	<?php
	}
	else
	{
	?>
	<div class="divright" style="margin-right:2%"><a href="login.php"><input type="button" value="Logheaza-te!"></a></div>
	<div class="divright" style="margin-right:2%"><a href="register.php"><input type="button" value="Inregistreaza-te!"></a></div>
	<div style="clear:both"></div>
	<?php
	}
	?>
</header>
<body>
	<table class="center" style="width:90%">
		<thead>
			<tr>
				<th><a href="hoteluri.php">Hoteluri</a></th>
				<th><a href="restaurante.php">Restaurante</a></th>
				<th><a href="muzee.php">Muzee</a></th>
				<th><a href="monumente.php">Monumente</a></th>
				<th><a href="magazine.php">Magazine</a></th>
				<th><a href="https://ro.wikipedia.org/wiki/Olteni%C8%9Ba">Informatii</a></th>
			</tr>
		</thead>
	</table>
<br>
<div class="lightblueline" style="width:90%;margin-left:auto;margin-right:auto;">
	<span class="behind">Bine ati venit!</span>
	<marquee behavior="scroll" direction="left">
		<img src="imagini/mainpage/index(1).jpg" class="mainpageimg" />
		<img src="imagini/mainpage/index(2).jpg" class="mainpageimg" />
		<img src="imagini/mainpage/index(3).png" class="mainpageimg" />
		<img src="imagini/mainpage/index(4).jpg" class="mainpageimg" />
		<img src="imagini/mainpage/index(5).jpg" class="mainpageimg" />
		<img src="imagini/mainpage/index(6).jpg" class="mainpageimg" />
		<img src="imagini/mainpage/index(7).jpg" class="mainpageimg" />
		<img src="imagini/mainpage/index(8).png" class="mainpageimg" />
	</marquee>
<div>
</body>
</html>
