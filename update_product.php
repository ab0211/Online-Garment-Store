<html>
<body>
<?php
session_start();
include("includes/contact.php");
$pid=$_SESSION["pd"];
$pname=$_POST["t2"];
//$pimage=$_POST["t3"];
$pdes=$_POST["t4"];
$pcost=$_POST["t5"];
$sql="update product set pname='".$pname."',pdes='".$pdes.'",pcost=".$pcost."";
$n=mysql__query($sql,$con);
if($n==1)
	echo "Product updated successfully";
?>
</body>
</html>
