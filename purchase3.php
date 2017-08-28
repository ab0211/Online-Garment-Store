<?php
	include("includes/connect.php");
	include("includes/function1.php");
	if($_REQUEST['command']=='update'){
		$max=count($_SESSION['cart']);
		for($i=0;$i<$max;$i++){
			$pid=$_SESSION['cart'][$i]['pd'];
			$qty=intval($_REQUEST['product'.$pid]);
			if($qty>0 && $qty<=999){
				$_SESSION['cart'][$i]['qty']=$qty;
			}
			else{
				$msg='Some proudcts not updated!, quantity must be a number between 1 and 999';
			}
		}
	}
	?>
	<html>
	<head>
	<script language="javascript">
	function update_cart(){
		document.form1.command.value='update';
		document.form1.submit();
	}


</script>
</head>

<body>
<form name="form1" method="post">
<input type="hidden" name="pid" />
<input type="hidden" name="command" />
<div style="margin:0px auto; width:600px;" >
    <div style="padding-bottom:10px">
    	<h1 align="center">Your Shopping Cart</h1>
		</div>
		<!--div style="color:#F00"><?=$msg?></div-->
    	<table border="0" cellpadding="5px" cellspacing="1px" style="font-family:Verdana, Geneva, sans-serif; font-size:11px; background-color:#E1E1E1" width="100%">
    	<?php
		if(isset($_SESSION["cart"])){
            	echo '<tr bgcolor="#FFFFFF" style="font-weight:bold"><td>id</td><td>Name</td><td>cost</td><td>Qty</td><td>Amount</td><td>Options</td></tr>';
				$max=count($_SESSION['cart']);
				for($i=0;$i<$max;$i++){
					$pid=$_SESSION['cart'][$i]['pd'];
					$qty=$_SESSION['cart'][$i]['qty'];
					$pname=get_product_name($pid);
					if($qty==0) continue;
			?>
			<tr bgcolor="#FFFFFF"><td><?=$i+1?></td><td><?=$pname?></td>
                    <td>$ <?=get_price($pid)?></td>
                    <td><input type="text" name="product<?=$pid?>" value="<?=$qty?>" maxlength="3" size="2" /></td>                    
                    <td>$ <?=get_price($pid)*$qty?></td>
                    <td><a href="javascript:del(<?=$pid?>)">Remove</a></td></tr>
					 <?php					
				}
			?>
			<tr><td><b>Order Total: $<?=get_order_total()?></b></td><td colspan="5" align="right"><input type="button" value="Update Cart" onclick="update_cart()"></td></tr>
			<?php
            }
			else{
				echo "<tr bgColor='#FFFFFF'><td>There are no items in your shopping cart!</td>";
			}
		?>
        </table>
    </div>
</form>
</body>
</html>


