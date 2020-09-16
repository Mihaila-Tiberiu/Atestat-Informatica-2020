
<?php 
function isLogged()
{
$result=false;
session_start();
if(isset($_SESSION['login'])
	&&$_SESSION['login']=='logged'
	&&isset($_SESSION['username'])
	&&$_SESSION['username']!=''
	&&isset($_SESSION['lastAccess']))
	{
		
	
$now= strtotime(Date('Y-m-d H:i:s'));
	if(($now- $_SESSION['lastAccess']) 	<=	(60*60))
	{
		$result=true;
		$_SESSION['lastAccess'] = $now;
	}

	if(!$result)
	{
		session_destroy();
	}
	return $result;
}
}
?>