<?php
	function get_product_name($pid){
		$rs=mysql_query("select pname from men where pid=$pid");
		$row=mysql_fetch_array($rs);
		return $row['pname'];
	}
	function get_price($pid){
		$rs=mysql_query("select pcost from men where pid=$pid");
		$row=mysql_fetch_array($rs);
		return $row['pcost'];
	}
	function remove_product($pid){
		$pid=intval($pid);
		$max=count($_SESSION['cart']);
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['cart'][$i]['pd']){
				unset($_SESSION['cart'][$i]);
				break;
			}
		}
		$_SESSION['cart']=array_values($_SESSION['cart']);
	}
	function get_order_total(){
		$max=count($_SESSION['cart']);
		$sum=0;
		for($i=0;$i<$max;$i++){
			$pid=$_SESSION['cart'][$i]['pd'];
			$qty=$_SESSION['cart'][$i]['qty'];
			$pcost=get_price($pid);
			$sum+=$pcost*$qty;
		}
		return $sum;
	}
	function addtocart($pid,$qty){
		if($pid<1 or $qty<1) return;
		
		if(is_array($_SESSION['cart'])){
			if(product_exists($pid)) return;
			$max=count($_SESSION['cart']);
			$_SESSION['cart'][$max]['pd']=$pid;
			$_SESSION['cart'][$max]['qty']=$qty;
		}
		else{
			$_SESSION['cart']=array();
			$_SESSION['cart'][0]['pd']=$pid;
			$_SESSION['cart'][0]['qty']=$qty;
		}
	}
	function product_exists($pid){
		$pid=intval($pid);
		$max=count($_SESSION['cart']);
		$flag=0;
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['cart'][$i]['pd']){
				$flag=1;
				break;
			}
		}
		return $flag;
	}

?>