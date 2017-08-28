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
<th>Product description</th><th>Product cost</th><th>Quantity</th><th>Total Cost</th><th></th>
</tr>
<?php
session_start();
include("includes/connect.php");
if(isset($_SESSION["cart"]))
{
	
	for($i=0;$i<count($_SESSION["cart"]);$i++)
	{
		
$pid=$_SESSION["cart"][$i]["pd"];
$qty=$_SESSION["cart"][$i]["qty"];
$sql="select * from men where pid='".$pid."'";
$rs=mysql_query($sql,$con);
//$i=$_SESSION["cart"];
if($row=mysql_fetch_array($rs))
{
	/*$i=$_SESSION["cart"]["pd"];
	for($i=0;$i<count($_SESSION["cart"]);$i++)
{*/
?>
<td><?=$row[0]?></td>
<td><?=$row[1]?></td>
<td><img src="<?=$row[2]?>" width="150" height="140" name="t3" alt=""/></td>
<td><?=$row[3]?></td>
<td><?=$row[4]?></td>
<td><form method="post" action="#"><input type="text" value="<?=$qty?>" name="product"<?=$row[0]?>/></td>
<?php
//$qtynew;
if(isset($_POST["q2"]))
{
	$qtynew=$_POST["product".$row[0]];
	//for($i=0;$i<count($_SESSION["cart"]);$i++)
	//{
		//$qty=$qtynew;
	
		//$_SESSION["cart"][$i]["qty"]=$qtynew;
		//$qty=$qtynew;
		$price=$qtynew*$row[4];
		$_SESSION["cart"][$i]["qty"]=$price;
		//$qtynew=$_SESSION["cart"][$i]["qty"];
		//$qt=$qtynew;
	//}
}
?>
<td><?=$qtynew * $row[4]?></td>
<td>
<form method="post"><input type="submit" value="Remove" name="remove"/></form></td>

<?php
if(isset($_POST["remove"]))
{
	if($pid==$_SESSION['cart'][$i]['pd'])
	{
//session_start();
unset($_SESSION["cart"][$i]["pd"]);
unset($_SESSION["cart"][$i]["qty"]);
break;
	}
//session_destroy();
//header("location:index.html");
}
/*function remove_product($pid){
		$pid=intval($pid);
		$max=count($_SESSION["cart"]);
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION["cart"][$i]["pd"]){
				unset($_SESSION["cart"][$i]);
				break;
			}
		}
		$_SESSION['cart']=array_values($_SESSION['cart']);
	}
}*/	
?>
</tr>
<?php
}
}
}
?>
<input type="submit" value="OK" name="q2"/></form>
</table>
<form method="post" action="buy.html">
<!--?php
$b=0;
	for($i=0;$i<count($_SESSION["cart"]);$i++){
		$qty*$row[4]=$amt;
	$a[0]=$amt+$a[i];}
	?-->

Total Amount:<input type="text" value="" "name="a1" readonly/><input type="submit" value="Checkout" name="checkout"/>
</form>
</div>
<div class="footer">
<center>© 2016 G-Store. All Rights Reserved</center>
</div>
</div>
</body>
</html>
<!--div id="details">
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