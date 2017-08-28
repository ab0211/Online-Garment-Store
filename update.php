<?php
if(isset($_POST["q2"]))
{
	session_start();
//$pid=$_SESSION["cart"]["pd"];
$qty=$_POST["q1"];
//$_SESSION["cart"]["qty"]=$qty;
echo "updated";
}
?>
