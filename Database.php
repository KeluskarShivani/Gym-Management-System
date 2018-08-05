<?php
$database="gym";
$name=$_POST['name'];
$address= $_POST['add'];
$dob= $_POST['dob'];
$age= $_POST['age'];
$rbgender= $_POST['rbgender'];
$email=$_POST['email'];
$password=$_POST['pwd'];
$conpassword=$_POST['conpwd'];

$con=mysql_connect("localhost","root","");
if(!$con)
{
die("could not connnet".mysql_error());
}
mysql_select_db("$database",$con);
$query="INSERT INTO reges(serial_no,name,address,dob,gender,age,e_mail,password,conform_password) values(' ','$name','$address','$dob','$rbgender','$age','$email','$password','$conpassword')";
mysql_query($query);
mysql_close();
header("location: login3.html");
?>