<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style .css">

</head>
<body>

<div class="topnav" id="myTopnav">
 <img src="images/logo.jpg" class="image1" alt="logo" />

 <a href="loginsystem/admin/index.php">Admin</a>
<a href="loginsystem/index.php">login/Register</a>
 <a href="contact.php" class="active">Contact</a>
  <a href="aboutus.html">About us</a>
  <a href="services.html">Services</a>
  <a href="index.html" >Home</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>


<?php
require('db.php');
    if (isset($_REQUEST['name'])){
        $name = stripslashes($_REQUEST['name']);

        $name = mysqli_real_escape_string($con,$name);
        $email = stripslashes($_REQUEST['email']);
        $email = mysqli_real_escape_string($con,$email);
        $subject = stripslashes($_REQUEST['subject']);
        $subject = mysqli_real_escape_string($con,$subject);
        
        $trn_date = date("Y-m-d H:i:s");
        $query = "INSERT into `feedback` (name, email, subject, trn_date)
        VALUES ('$name', '$email', '$subject',  '$trn_date')";
        $result = mysqli_query($con,$query);
        if($result){

            echo "<div class='form'>
            <h3><center>Thank you for your feed back
            . <br> we will contact you regarding your problems.
            </h3><center>
            
                </div>";
                
                }
    }else{
        ?>


  
              <div class="form">

<form name="contact" action="" method="post">

<style>
body {font-family: 'cursive',sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
width: 100%;
padding: 12px;
border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
resize: vertical;
}

input[type=submit] {
    background-color: rgb(207,181,59);
color: white;
padding: 12px 20px;
border: none;
    border-radius: 4px;
cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color:#eb782c ;
padding: 80px;
}
</style>

<div class="container">
<h1 style="font-family:courier;" > <center> Send feedback<br> Please fill the Form</center></h1>


<div class="container">
<form name="registration" action="" method="post">
<label for="name">Name</label>
<input type="text" id="name" name=" name" placeholder="Your name.."required>
<label for="email">E-mail</label>
<input type="text" id="email" name=" email" placeholder="E-mail " required>

<label for="subject">Subject</label><br>
<textarea id="subject" name="subject" placeholder="Write something.." style="height:100px"required></textarea>   <br>

<center><input type="submit" name="submit" value="Submit" /></center>
</form>
</div>
</form>
<center> GO BACK TO HOME
<a href="home.html" target="_top">click here </a>
</p></center>
<?php } ?>



</body>
</html>