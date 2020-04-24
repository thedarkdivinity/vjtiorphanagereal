<?php
session_start();
error_reporting(0);
include('connect.php');
if(isset($_POST['submit'])&&!empty($_POST['submit']))
{
  $name=($_POST['name']);
  $email=($_POST['email']);
  $phone=($_POST['phone']);
  $fax=($_POST['password']);
  $street=($_POST['street']);
  $city=($_POST['city']);
  $state=($_POST['state']);
  $pin=($_POST['pin']);
  $insertquery="INSERT INTO committee (`name`, `email`, `phone`, `password`, `street`, `city`, `state`, `pin`) VALUES ('$name','$email','$phone','$password','$street','$city','$state','$pin')";
  $query=mysqli_query($conn,$insertquery);
  if($query)
  {
    ?>
    <script>
      alert('Data inserted');
      </script>
      <?php 

  }
}
?>
<!doctype html>
<html lang="en">
  <head>
    <title>Committee Registration</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
    <div class="container-fluid p-3  bg-primary text-white">
        <div class="test mx-auto"><h1 >COMMITTEE REGISTRATION</h1></div>
    </div>
    <div class="container   mx-auto  p-5 bg-success ">
        <form method="post" action="login.php">
          <div class="row">
            <div class="col">
              <label for="name">Name</label>
              <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
            </div>
            <div class="col">
              <label for="email">  Email ID</label>
              <input type="email" class="form-control" placeholder="Enter email" name="email" id="email" required>
            </div>
          </div>
          <div class="row">
            <div class="col">
              <label for="phone">Phone No,</label>
              <input type="number" class="form-control"  name="phone" id="phone" placeholder="Enter phone number"  required>
            </div>
            <div class="col">
              <label for="password"> Password</label>
              <input type="password" class="form-control" placeholder="Enter password" name="password" id="password" >
            </div>
          </div>
          <div class="row">
            <div class="col">
              <label for="street">STREET</label>
              <input type="text" class="form-control" name="street" id="street" placeholder="Enter street "  required>
            </div>
            <div class="col">
              <label for="city"> CITY </label>
              <input type="text" class="form-control" placeholder="Enter city" name="city" id="city" required>
            </div>
            <div class="col">
              <label for="state"> STATE </label>
              <input type="text" class="form-control" placeholder="Enter State" name="state" id="state" required>
            </div>         
         </div>
         
            
              <label for="pin"> PINCODE </label>
              <input type="number" class="form-control" placeholder="Enter pincode" name="pin" id="pin" required>
            
              <label for="sel1">POST:</label>
              <select class="form-control" id="sel1">
                <option>TREASURER</option>
                <option>CHAIRMAN</option>
                <option>VICE CHAIRMAN</option>
                
              </select> 
          <button type="submit" name="submit" value="submit" class="btn btn-primary mx-auto">Submit</button>
       
        </form>



     
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
