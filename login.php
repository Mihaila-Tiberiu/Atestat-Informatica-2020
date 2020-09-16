<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logheaza-te!</title>
<link rel="stylesheet" type="text/css" href="main.css">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<?php
	if(isset($_POST['username'])&& $_POST['username']!="")
	{
		$login = false;
		$mysqli=new mysqli('localhost','root','','oltenita');
		if($mysqli->connect_error)
		{
			die('Nu aveti acces!');
		}
		
		$sql= "SELECT *
				FROM utilizatori
				WHERE username='".$_POST['username']."'
				AND password= '".md5($_POST['password'])."'";

			if($rs=$mysqli->query($sql))
			{
				if($rs->num_rows > 0)
				{
					session_start();
					$_SESSION['login']='logged';
					$_SESSION['username']=$_POST['username'];
					$_SESSION['lastAccess']=strtotime(Date('Y-m-d H:i:s'));
					$login = true;
					header('Location: index.php');
				}
			}
			
			$mysqli->close();
			if(!$login)
			{
				session_start();
				session_destroy();
			}
		
	}
?>
</head>
	<header>
		Logheaza-te!
	</header>
	<body>
		<form action="" method="post">
				<div style="width:30%" class="center">
						<div class="divleft" style="text-align:center"><label for="username">Nume de utilizator:</label></div><div class="divright"><input pattern="^[a-zA-Z0-9]+$" maxlength="30"  style="font-size:60%; text-align:center" type="text" name="username" id="username"></div>
						<div class="divleft" style="text-align:center"><label for="password">Parola:</label></div><div class="divright"><input pattern="^[a-zA-Z0-9]+$" maxlength="30"  style="font-size:60%; text-align:center" type="password" name="password" id="password"></div>
						<div style="clear:both"></div>
					<div style="margin-top:4%;margin-bottom:4%">	
						<a href="register.php"><div style="text-align:center;" class="divleft"><input style="font-size:90%" type="button" value="Inregistreaza-te!"></div></a>
						<div style="text-align:center;" class="divright"><input  class="succees" style="font-size:90%" type="submit" value="Logheaza-te!"></div>
						<a href="index.php"><div style="text-align:center;" class="divright"><input  class="eroare" style="font-size:90%" type="button" value="Inapoi acasa"></div></a>
						<div style="clear:both"></div>
					</div>	
			<?php
				if(isset($login)&&($login==false))
				{
					?>

						<div class='eroare' style="text-align:center">Nu s-a gasit niciun utilizator! </div>
					<?php
				}
			?>
				</div>
		</form>
	</body>
</html>