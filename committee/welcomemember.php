<?php
session_start();
include('connect.php');
?>

<!doctype html>
<html lang="en">
  <head>
    <title>WELCOME </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
  <body>
  <?php
$cid=$_SESSION['uid'];
$ret=mysqli_query($conn,"select name from committee where ID='$cid'");
$row=mysqli_fetch_array($ret);
$name=$row['name'];

?>
    <div class="container-fluid p-3  bg-primary text-white">
      <h1 >WELCOME <?php 
      echo $name; ?></h1> </div>
      
      <div class="container ">
         <p>Hope you're doing well <?php echo $name; ?></p>
         <div class="row">
             <div class="col">
            <button type="button" class="btn btn-info">VIEW TREASURY</button>
         
        
            <a  href="login.php" >

            <button type="button" class="btn btn-info yo">LOGOUT</button>
</a>
<button type="button" class="btn btn-info yo"><a href="adoptdisplay.php">VIEW ADOPTIONS</a></button>

         </div>
        </div>
        </div>
        <div class="manwa">
            <img src="manwalk.gif">
            
        </div>

      









    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>