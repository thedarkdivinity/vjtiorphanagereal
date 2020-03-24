<?php
$con=mysqli_connect("localhost","root","sayush12")or die(mysqli_error($con));
$db=mysqli_select_db($con,'contact')or die(mysqli_error());
if(isset($_POST['submit'])){
	$name=$_POST['name'];
	$email=$_POST['email'];
	$message=$_POST['message'];


if($name==''){
	echo "<script>alert ('Enter your id') </script>";
}
if($email==''){
	echo "<script>alert ('Enter your password') </script>";
}
if($message==''){
	echo "<script>alert ('Enter your emailid') </script>";
}
else{
	$query="insert into contact(name,email,message) values ('$name',
	'$email','$message')";

if(mysqli_query($con,$query)){
	echo "<h1>form submitted successfully</h1>";
}
}
}

?>