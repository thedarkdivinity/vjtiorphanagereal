<?php
session_start();
error_reporting(0);
include('connect.php');

if(isset($_POST['submit']))
  {

    $email=$_POST['email'];
    $password=$_POST['password'];
    $query=mysqli_query($conn,"select id from committee where  email='$email' && password='$password' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['uid']=$ret['id'];
     header('location:welcomemember.php');
    }
    else{
      echo "Invalid Details.";
    }
  }
  ?>





<!doctype html>
<html lang="en">
  <head>
    <title>LOGIN NOW</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="sty.css">
    </head>
  <body>
    <div class="container-fluid p-3  bg-primary text-white">
      <div class="test mx-auto"><h1 >COMMITTEE LOGIN</h1></div>
  </div>
      <div class="whatever">
          <div class="container">
            
            <form method="POST" action="">
              <div class="form-group">
                <label for="email">Email address:</label>
                <input type="email" class="form-control" placeholder="Enter email" id="email" name="email" required>
              </div>
              <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="password" >
              </div>
              <div class="form-group form-check">
                <label class="form-check-label">
                  <input class="form-check-input" type="checkbox" required> Remember me
                </label>
              </div>
              <button type="submit" name="submit" value="submit" class="btn btn-primary">Submit</button>
            </form>
         
              
          </div>
          

      </div>
   
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>