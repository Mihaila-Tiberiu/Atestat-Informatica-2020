<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurante in Oltenita </title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="main.css">
<?php
require_once "functions.php";
isLogged();

$mysqli = new mysqli('localhost','root','','oltenita');

$sql="SELECT * FROM restaurante";
$rs=$mysqli->query($sql);
?>
<style type="text/css">
td{
	text-align:center;
}
</style>
</head>
<header>
	<a href="index.php"><input type="button" value="Inapoi Acasa"></a> - Restaurante
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
		
		header('Location: index.php'); // ------------------------
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
	<table style="width:90%" class="center">
		<thead>
			<tr>
				<th>Vezi recenziile!</th>
				<th>Nume</th>
				<th>Descriere</th>
				<th>Orar</th>
				<th>Telefon</th>
				<th>Adresa</th>
				<th>Poza</th>
				<th>Stele!</th>
			</tr>
		</thead>
		<tbody>
			<?php
				while($row=$rs->fetch_assoc()){
			?>
				<tr>
					<td>
						<form action="" method="post">
							<input type="hidden" id="ins" name="ins" value='<?php echo $row['idRestaurant']; ?>'>
							<input type="submit" value="Vezi Recenziile!">
						</form>
						<?php
						if(isset($_POST['ins']))
						{
							$_SESSION['ins4']=$_POST['ins'];
							header('Location: getinsrestaurante.php');
						}
						?>
					</td>
					<td><?php echo $row['nume'];?></td>
					<td><?php echo $row['descriere'];?></td>
					<td><?php echo $row['orar'];?></td>
					<td><?php echo $row['telefon'];?></td>
					<td><?php echo $row['adresa'];?></td>
					<td style="width:10%;"><img class="tabelprezentare" src="imagini/restaurante/<?php echo $row['poza'];?>"></td>
					<td><?php $sql2="SELECT * FROM `recenziirestaurante` WHERE idInstitutie='".$row['idRestaurant']."';";  //
						$rs2=$mysqli->query($sql2);   
						$rez=0;
						$medie=0;
						while($row2=$rs2->fetch_assoc()){
						$rez=$rez+$row2['stele'];
						$medie++;
						}
						if(!($medie==0)){ 
							if($rez/$medie<=2){
							?><span style="color:FireBrick !important;"><?php echo round($rez/$medie); ?></span><?php
										}
							if(($rez/$medie>2)&&($rez/$medie<=3.5)){
							?><span style="color:GoldenRod!important;"><?php echo round($rez/$medie); ?></span><?php
										}
							if(($rez/$medie>3.5)&&($rez/$medie<=5)){
							?><span style="color:DarkOliveGreen !important;"><?php echo round($rez/$medie); ?></span><?php
										}		
							}
						else {?><span style="color:brown!important;"><?php echo 'Nu exista recenzii pentru aceasta institutie!'; ?></span><?php
										}		
						?> </td>
				</tr>	
			<?php
				}
			?>
		</tbody>
	</table>
</body>
</html>