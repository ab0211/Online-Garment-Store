<?php
$con=mysql_connect("localhost","root","");
if(!$con)
die("cannot connect to server");
else
{
mysql_select_db("cloth_db");
}
?>