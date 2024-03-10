<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inregistreaza-te!</title>
<link rel="stylesheet" type="text/css" href="main.css">
<style type="text/css">
</style>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<?php

$pattern = '/^(?!(?:(?:\\x22?\\x5C[\\x00-\\x7E]\\x22?)|(?:\\x22?[^\\x5C\\x22]\\x22?)){255,})(?!(?:(?:\\x22?\\x5C[\\x00-\\x7E]\\x22?)|(?:\\x22?[^\\x5C\\x22]\\x22?)){65,}@)(?:(?:[\\x21\\x23-\\x27\\x2A\\x2B\\x2D\\x2F-\\x39\\x3D\\x3F\\x5E-\\x7E]+)|(?:\\x22(?:[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x21\\x23-\\x5B\\x5D-\\x7F]|(?:\\x5C[\\x00-\\x7F]))*\\x22))(?:\\.(?:(?:[\\x21\\x23-\\x27\\x2A\\x2B\\x2D\\x2F-\\x39\\x3D\\x3F\\x5E-\\x7E]+)|(?:\\x22(?:[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x21\\x23-\\x5B\\x5D-\\x7F]|(?:\\x5C[\\x00-\\x7F]))*\\x22)))*@(?:(?:(?!.*[^.]{64,})(?:(?:(?:xn--)?[a-z0-9]+(?:-+[a-z0-9]+)*\\.){1,126}){1,}(?:(?:[a-z][a-z0-9]*)|(?:(?:xn--)[a-z0-9]+))(?:-+[a-z0-9]+)*)|(?:\\[(?:(?:IPv6:(?:(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){7})|(?:(?!(?:.*[a-f0-9][:\\]]){7,})(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,5})?::(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,5})?)))|(?:(?:IPv6:(?:(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){5}:)|(?:(?!(?:.*[a-f0-9]:){5,})(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,3})?::(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,3}:)?)))?(?:(?:25[0-5])|(?:2[0-4][0-9])|(?:1[0-9]{2})|(?:[1-9]?[0-9]))(?:\\.(?:(?:25[0-5])|(?:2[0-4][0-9])|(?:1[0-9]{2})|(?:[1-9]?[0-9]))){3}))\\]))$/iD';
$mysqli=new mysqli('localhost','root','','oltenita');
$sql= "SELECT * FROM utilizatori";
$rs=$mysqli->query($sql);
?>
</head>
	<header>
		Inregistreaza-te!
	</header>
	<body>
		<form action="" method="post">
				<div style="width:30%" class="center">
						<div class="divleft" style="text-align:center"><label for="username">Nume utilizator:</label></div><div class="divright"><input pattern="^[a-zA-Z0-9]+$" maxlength="30" style="font-size:60%; text-align:center" type="text" name="username" id="username"></div>
						<div class="divleft" style="text-align:center"><label for="password">Parola:</label></div><div class="divright"><input pattern="^[a-zA-Z0-9]+$" maxlength="30" style="font-size:60%; text-align:center" type="password" name="password" id="password"></div>
						<div class="divleft" style="text-align:center"><label for="password2">Confirmare parola:</label></div><div class="divright"><input pattern="^[a-zA-Z0-9]+$" maxlength="30" style="font-size:60%; text-align:center" type="password" name="password2" id="password2"></div>
						<div class="divleft" style="text-align:center"><label for="nume">Nume real:</label></div><div class="divright"><input maxlength="30" style="font-size:60%; text-align:center" type="text" name="nume" id="nume"></div>
						<div class="divleft" style="text-align:center"><label for="email">Email:</label></div><div class="divright"><input maxlength="30" style="font-size:60%; text-align:center" type="text" name="email" id="email"></div>
						<div class="divleft" style="text-align:center"><label for="telefon">Telefon:</label></div><div class="divright"><input maxlength="10" style="font-size:60%; text-align:center" type="text" name="telefon" id="telefon"></div>
						<div style="clear:both"></div>
					<div style="margin-top:4%;margin-bottom:4%">	
						<a href="login.php"><div style="text-align:center;" class="divleft"><input style="font-size:90%" type="button" value="Logheaza-te!"></div></a>
						<div style="text-align:center;" class="divright"><input class="succees" style="font-size:90%" type="submit" value="Inregistreaza-te!"></div>
						<a href="index.php"><div style="text-align:center;" class="divright"><input  class="eroare" style="font-size:90%" type="button" value="Inapoi acasa"></div></a>
						<div style="clear:both"></div>
					</div>	
		</form>
			<?php
				if(!(isset($_POST['username']))||!(isset($_POST['password']))||!(isset($_POST['nume']))||
					!(isset($_POST['password2']))||!(isset($_POST['email']))||!(isset($_POST['telefon']))||
					trim($_POST['username'])==""||trim($_POST['password'])==""||trim($_POST['password2'])==""||
					trim($_POST['nume'])==""||trim($_POST['email'])==""||trim($_POST['telefon'])=="")
				{
					?>
						<div class='eroare' style="text-align:center">Va rugam completati toate campurile!</div>
					<?php
				}
				else
				{

						if(!($_POST['password']==$_POST['password2']))
						{
					?>
						<div class='eroare' style="text-align:center"> Parola a fost scrisa gresit! </div>
					<?php
						}
						else
						{
							if(!(is_numeric($_POST['telefon']))||(!(strlen($_POST['telefon'])==10)))
							{
							?>
							<div class='eroare' style="text-align:center"> Numarul de telefon nu este corect! </div>
							<?php
							}
							else{
							$ver=0;
							while($row=$rs->fetch_assoc())
							{
								if($row['username']==$_POST['username'])
								{
									$ver=1;
								}
							}
							
							if($ver==1)
							{
							?>

						<div class='eroare' style="text-align:center">Utilizatorul exista deja! </div>
							
							<?php	
							}
							else
							{
								if(!(preg_match($pattern,$_POST['email'])==1))
								{
							?>

						<div class='eroare' style="text-align:center">Adresa de email nu este valida!</div>
							
							<?php	
								}
								else
								{
							?>
						<div class='succees' style="text-align:center">Utilizatorul a fost inregistrat cu succes! <br>
																		Acum va puteti loga!
						</div>
							<?php
							$sql="INSERT INTO `utilizatori`(`username`, `password`, `nume`, `email`, `telefon`) VALUES ('".$_POST['username']."','".md5($_POST['password'])."','".
							trim($_POST['nume'])."','".$_POST['email']."','".$_POST['telefon']."');";
							$mysqli->query($sql);
								}
							}
						}
					}
				}
			?>
				</div>
	</body>
</html>