<html>
<body>
<form method="post" action="insert_cloth.php" enctype="multipart/form-data">
<pre>
product id<input type="text" name="t1"/>
product name<input type="text" name="t2"/>
product image<input type="file" name="file"/>
product description<input type="text" name="t3"/>
product cost<input type="text" name="t4"/>
<input type="submit" name="btn" value="add"/>
</pre>
</form>
<?php
if(isset($_POST["btn"]))
{
include("includes/connect.php");
$pid=$_POST["t1"];
$pname=$_POST["t2"];
$pdes=$_POST["t3"];
$pcost=$_POST["t4"];
$file_name=$_FILES["file"]["name"];
$path="C:/xampp/htdocs/project/uploads/".$file_name;
$db_path="uploads/".$file_name;
$temp_name=$_FILES["file"]["tmp_name"];
$sql="insert into men values('".$pid."','".$pname."','".$db_path."','".$pdes."',".$pcost.")";
$n=mysql_query($sql,$con);
move_uploaded_file($temp_name,$path);
}
?>
