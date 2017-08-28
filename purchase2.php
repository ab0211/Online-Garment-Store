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
<script language="javascript">
function update_cart(){
		document.form1.command.value='update';
		document.form1.submit();
	}
</script>	
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
include("includes/function1.php");
if($_REQUEST['command']=='update'){
		$max=count($_SESSION['cart']);
		for($i=0;$i<$max;$i++){
			$pid=$_SESSION['cart'][$i]['pd'];
			$qty=intval($_REQUEST['qty'.$pid]);
			if($qty>0 && $qty<=999){
				$_SESSION['cart'][$i]['qty']=$qty;
			}
			else{
				$msg='Some proudcts not updated!, quantity must be a number between 1 and 999';
			}
		}
	}
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
<td><form name="form1" method="post" ><input type="text" value="<?=$qty?>" name="product"<?=$row[0]?>/><!--input type="button" value="OK" name="q2" onclick="update_cart()"/></form--></td>
<!--?php
//$qtynew;
//if(isset($_POST["q2"]))
//{
	//$qtynew=$_POST["product".$row[0]];
	//for($i=0;$i<count($_SESSION["cart"]);$i++)
	//{
		//$qty=$qtynew;
	
		//$_SESSION["cart"][$i]["qty"]=$qtynew;
		//$qty=$qtynew;
		//$price=$qtynew*$row[4];
		//$_SESSION["cart"][$i]["qty"]=$price;
		//$qtynew=$_SESSION["cart"][$i]["qty"];
		//$qt=$qtynew;
	//}
//}
?-->
<td><?=$row[4]*$qty?></td>
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
<input type="button" value="OK" name="q2" onclick="update_cart()"/></form>
</table>
<form method="post" action="buy.html">
<!--?php
$b=0;
	for($i=0;$i<count($_SESSION["cart"]);$i++){
		$qty*$row[4]=$amt;
	$a[0]=$amt+$a[i];}
	?-->

Total Amount:<input type="text" value="$<?=get_order_total()?>" "name="a1" readonly/><input type="submit" value="Checkout" name="checkout"/>
</form>
</div>
<div class="footer">
<center>© 2016 G-Store. All Rights Reserved</center>
</div>
</div>
</body>
</html>
