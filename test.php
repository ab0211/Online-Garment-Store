<html>
<body>
<form method="post" action="test.php">
<pre>
name<input type="text" name="t1"/>
<input type="submit" name="btn" value="Purchase Now"/>
<?php
session_start();
if(isset($_POST["btn"]));
{
$pid="mp2";
$_SESSION["pd"]=$pid;
header("location:purchase.php");
}
?>
</pre>
</form>

</body>
</html>
