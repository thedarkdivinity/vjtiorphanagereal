
<?php
session_start();
error_reporting(0);
include('connect.php');
if(isset($_POST['submit'])&&!empty($_POST['submit']))
{
  $name=($_POST['name']);
  $email=($_POST['email']);
  $phone=($_POST['phone']);
  $fax=($_POST['fax']);
  $street=($_POST['street']);
  $city=($_POST['city']);
  $state=($_POST['state']);
  $pin=($_POST['pin']);
  $insertquery="INSERT INTO adoption (`name`, `email`, `phone`, `fax`, `street`, `city`, `state`, `pin`) VALUES ('$name','$email','$phone','$fax','$street','$city','$state','$pin')";
  $query=mysqli_query($conn,$insertquery);
  if($query){
    echo "inserted";

  }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <title>Adoption Form</title>
</head>
<body>
<div class="container-fluid p-3 my-3 bg-primary text-white ">
  <p class="tex">Adoption Requests</p>
</div>
<div class="container  p-5 bg-success ">
  <form method="post" action="">
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
        <input type="number" class="form-control" id="phone" placeholder="Enter phone number" name="phone" required>
      </div>
      <div class="col">
        <label for="fax"> FAX </label>
        <input type="number" class="form-control" placeholder="Enter FAX" name="fax" id="fax" >
      </div>
    </div>
    <div class="row">
      <div class="col">
        <label for="street">STREET</label>
        <input type="text" class="form-control" id="street" placeholder="Enter street " name="street" required>
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
      
  
    <button type="submit" name="submit" value="submit" class="btn btn-primary" >Submit</button>

  </form>
  <div class="babywalk">
 <img  class="baccha img-fluid" src="crawl.gif" alt="adoptme"> 
 <img src="hand.png" alt="hand" class="hand img-fluid">  
</div>

</body>
</html>


