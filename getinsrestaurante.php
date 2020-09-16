<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<?php
ob_start();
require_once "functions.php";

isLogged();
$mysqli = new mysqli('localhost','root','','oltenita');
	if(!isset($_SESSION['ins4']))
	{ 
		header('Location: index.php');
	?></head><?php
	}
	else{
$sql="SELECT * FROM recenziirestaurante WHERE idInstitutie='".$_SESSION['ins4']."';" ;
$rs=$mysqli->query($sql);

$sql2="SELECT * FROM restaurante WHERE idRestaurant='".$_SESSION['ins4']."';" ;
$rs2=$mysqli->query($sql2);
while($row2=$rs2->fetch_assoc()){
	$institutie=$row2['nume'];
}
?>
<title>Recenzii <?php echo $institutie; ?></title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="main.css">
<style type="text/css">
td{
	text-align:center;
	max-width:30%;
}
</style>
</head>
<header>
	<a href="restaurante.php"><input type="button" value="Inapoi la lista de restaurante!"></a> - Recenzii <?php echo $institutie; ?> <!-- -->
	<?php 
	if(isset($_SESSION['login'])&&$_SESSION['login']=='logged'&&isset($_SESSION['username'])&&$_SESSION['username']!='')
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
		
		header('Location: getinsrestaurante.php');
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
	<?php

	if ($rs->num_rows > 0) {
	?>
	<table class="center" style="width:90%">
		<thead>
			<tr>
			<th>Utilizatorul</th>
			<th>Recenzia</th>
			<th>Stelele acordate</th>
			</tr>
		</thead>
		<tbody>
			<?php
			while($row=$rs->fetch_assoc()){
			?>
			<tr>
			<td><?php echo $row['username']; ?></td>
			<td><pre><?php echo $row['comentariu']; ?></pre></td>
			<td>
			<?php if($row['stele']<=2){ ?>
			<span style="color:FireBrick;"><?php echo $row['stele']; ?></span> <?php } ?>
			<?php if(($row['stele']>2)&&($row['stele']<=3.5)){ ?>
			<span style="color:GoldenRod;"><?php echo $row['stele']; ?></span> <?php } ?>
			<?php if($row['stele']>3.5){ ?>
			<span style="color:DarkOliveGreen;"><?php echo $row['stele']; ?></span> <?php } ?>
			</td>
			<?php if((isset($_SESSION['username'])&&$_SESSION['username']==$row['username'])||(isset($_SESSION['username'])&&$_SESSION['username']=='admin')){
			?>
			<td>
				<form action="" method="post">
					<input type="hidden" value="<?php echo $row['idRecenzie']?>" id="eadmin" name="eadmin">
					<input type="submit" value="Sterge recenzia">
				</form>
			</td>
			<?php
			}

			if(isset($_POST['eadmin'])&&$_POST['eadmin']>0)
			{	
				$sql6="DELETE FROM `recenziirestaurante` WHERE `idRecenzie`=".$_POST['eadmin'].";";
				echo $sql6;
				$mysqli->query($sql6);
				$_POST['eadmin']=-1;
				header('Location: getinsrestaurante.php');
			}
			?>
			</tr>
			<?php } ?>
		</tbody>
	</table>
	<?php 
		}
		else
		{
		?>
		<div style="width:90%; text-align:center;" class="eroare">Nu exista recenzii! Fii tu primul care scrie una!</div>
		<?php 
		}
		
		if(isset($_SESSION['login'])&&$_SESSION['login']=='logged'&&isset($_SESSION['username'])&&!($_SESSION['username']==''))
		{
		?>
		<div style="width:90%; margin-top:5%; text-align:center;" class="center">
		<form action="" method="post">
			Recenzia dumneavoastra: <br>
			<textarea placeholder="Maxim 2000 caractere..." maxlength="2000" WRAP=HARD style="resize:none" rows="20" cols="50" name="comentariu" id="comentariu"></textarea><br>
			Stelele acordate: <br>
			<div>
			<span style="color:Maroon">O stea</span><input type="radio" name="stele" value="1"><br>
			<span style="color:FireBrick">2 stele</span><input type="radio" name="stele" value="2"><br>
			<span style="color:GoldenRod">3 stele</span><input type="radio" name="stele" value="3"><br>
			<span style="color:OliveDrab ">4 stele</span><input type="radio" name="stele" value="4"><br>
			<span style="color:DarkOliveGreen">5 stele</span><input type="radio" name="stele" value="5">
			</div>
			<input type="submit" style="margin-top:2%" value="Posteaza recenzia!">
		</form>
		</div>
		<?php
		}
		else
		{
		?>
		<div class="center" style="width:75%; margin-top:5%; text-align:center; color:FireBrick">Pentru a scrie o recenzie trebuie sa va conectati!</div>
		<?php 
		} 
		if(isset($_POST['comentariu'])&&!(trim($_POST['comentariu'])=='')&&isset($_POST['stele']))
		{
		$ok=1;
			$rs4=$mysqli->query("SELECT * FROM recenziirestaurante WHERE idInstitutie='".$_SESSION['ins4']."';");
			while($row=$rs4->fetch_assoc())
				{
					if($row['username']==$_SESSION['username'])
					{
						$ok=0;
					}
				}
		if($ok==1){
		$sql4="INSERT INTO `recenziirestaurante`(`username`, `idInstitutie`, `comentariu`, `stele`) VALUES ('".$_SESSION['username']."','".$_SESSION['ins4']."','".trim($_POST['comentariu'])."','".$_POST['stele']."');";
		$mysqli->query($sql4);
		header("Location: getinsrestaurante.php");
		}
		else{
			?>
		<div class="center" style="color:FireBrick; margin-top:1%; text-align:center; width:75%; border:Maroon solid;background-color:DarkSalmon  ;">Ati scris deja o recenzie!</div>
			<?php
		}
		}
		else
		{
		if(isset($_SESSION['login'])&&$_SESSION['login']=='logged'&&isset($_SESSION['username'])&&!($_SESSION['username']=='')){
		?>
		<div class="center" style="color:FireBrick; margin-top:1%; text-align:center; width:75%; border:Maroon solid;background-color:DarkSalmon  ;">Va rugam completati toate campurile!</div>
		<?php
		}
		}
		?>
</body>
<?php } 
ob_flush(); ?>
</html>
















