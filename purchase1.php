<html>
<head>
<link href="purchase.css" rel="stylesheet" type="text/css"/>
<style>
#card
{
position:relative;
top:20px;
left:10px;
width:300px;
height:370px;
background-image:url(images/card.jpg);
background-size:cover;
color:#F8F8FF;
font-size:20px;
display:none;
}
</style>
</head>
<body>
<div class="main">
<div class="image">
<center>
<img src="images/title.png" width="400" height="200" alt="no image"/>
</center>
</div>
<br>
<div class="table">
			   <table cellpadding="5" cellspacing="5" border="1" align="center">
<tr>
<th>Product id</th><th>Product name</th><th>Product image</th>
<th>Product description</th><th>Product cost</th><th>Quantity</th><th>Total Cost</th>
</tr>
<?php
session_start();
include("includes/connect.php");
//if(isset($_SESSION["cart"]["pd"])&($_SESSION["cart"]["qty"]))
	foreach($_SESSION["cart"] as $pid)
	{
if($pid==$_SESSION["cart"]["pd"])
{
	$exist=TRUE;
	}
	else
	{
		$exist=FALSE;
}
	}
	if($exist==TRUE)
	{
		continue;
	}
	else
{
$pid=$_SESSION["cart"]["pd"];
$qty=$_SESSION["cart"]["qty"];
$sql="select * from men where pid='".$pid."'";
$rs=mysql_query($sql,$con);
while($row=mysql_fetch_array($rs))
{
?>
<td><?=$row[0]?></td>
<td><?=$row[1]?></td>
<td><img src="<?=$row[2]?>" width="150" height="140" name="t3" alt=""/></td>
<td><?=$row[3]?></td>
<td><?=$row[4]?></td>
<td><form method="post" action="#"><input type="text" value="<?=$qty?>" name="q1"/><input type="submit" value="OK" name="q2"/></form></td>
<?php
if(isset($_POST["q2"]))
{
//$pid=$_SESSION["cart"]["pd"];
$qty=$_POST["q1"];
$_SESSION["cart"]["qty"]=$qty;
}
?>

<td><?=$qty * $row[4]?></td>
</tr>
<?php
}
}
?>
</table>
</div>
<div id="details">
<form method="post" action="index.html">
<pre>
<center>
Email<p>(to notify delivery info)</p><input type="email" name="e1" required/>
<br>
Contact No.<input type="number" name="n1" required/>
<br>
<label align="center">Delivery Address</label><textarea name="a1" rows="10" cols="10" required></textarea>
<br>
Payment Options<select name="s1" required>
<option name="o1" onclick="fun1();">Cash On Delivery</option>
<option name="o2" onclick="fun();">Debit Card</option>
<option name="o3" onclick="fun();">Credit Card</option>
</select>
<script type="text/javascript">
function fun()
{
document.getElementById("card").style.display="block";
}
function fun1()
{
document.getElementById("card").style.display="none";	
}
</script>

<div id="card">
<form method="post" action="#">
Card Number<input type="number" name="c2" />
<br>
Expiry Date<input type="date" name="c3" />
<br>
CVV<input type="number" name="c4"/>
<br>
Name on Card<input type="text" name="c5" />
<br>
<input type="submit" value="Save & Pay" name="c6"/>
</form>
</div>
<br>
<input type="submit" value="OK" name="ok" onclick="fun2();">
<script type="text/javascript">
function fun2()
{
alert("Done!! Delivery within 4 days");
alert("Shop Again!!");
}
</script>
</center>
</pre>
</form>
</div>
<div class="footer">
<center>© 2016 G-Store. All Rights Reserved</center>
</div>
</div>

</body>
</html>