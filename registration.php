<?php
//connect to database
$con= mysql_connect("localhost","root","");
	if(!$con)
	{
	die('Could not connect:'.mysql_error());
	}
	mysql_select_db("gym",$con);
	



// inserting record in database
$txtname=$_post['txtname'];
$txtadd=$_post['txtadd'];
$txtdob=$_post['txtdob'];
$txtage=$_post['txtage'];
$rbgender=$_post['rbgender'];
$txtemail=$_post['txtemail'];
$txtpwd=$_post['txtpwd'];
$txtconpwd=$_post['txtconpwd'];

$sql="INSERT INTO registeruser(name, add, dob, age, gender, email, password, confirmpassword) VALUES('$txtname','$txtadd','$txtdob','$txtage','$rbgender','$txtemail','$txtpwd','$txtconpwd')";
if(!mysql_query($sql,$con))
	{
		die('Error:'.mysql_error());
	}
	else
	{
		echo"1 record added";
	}




//Close connection to database
mysql_close();
?>


