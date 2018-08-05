<?php
   include("config.php");
   $active = " ";
   
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($db,$_POST['username']);
      $mypassword = mysqli_real_escape_string($db,$_POST['password']); 
      
      $sql = "SELECT serial_no,name,address,dob,gender,age,e_mail,password,conform_password FROM reges WHERE e_mail ='$myusername' and password = '$mypassword'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row["active"];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
//session_register("myusername");
         $_SESSION['login_user'] = $myusername;
         
         header("location: home1.html");
		 echo"done";
      }else {
		  echo"error";
         $error = "Your Login Name or Password is invalid";
      }
   }
?>