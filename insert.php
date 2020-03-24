<?php
$con=mysqli_connect("localhost","root","sayush12")or die(mysqli_error());
$db=mysqli_select_db($con,'login-register')or die(mysqli_error());

if(isset($_POST['submit'])&&!isset($_POST['login'])){
	$uniqueID=$_POST['uniqueID'];
	$password=$_POST['password'];
	$emailid=$_POST['emailid'];


if($uniqueID==''){
	echo "<script>alert ('Enter your id') </script>";
}
if($password==''){
	echo "<script>alert ('Enter your password') </script>";
}
if($emailid==''){
	echo "<script>alert ('Enter your emailid') </script>";
}
$sql_id = "SELECT * FROM register WHERE uniqueID='$uniqueID'";
  	$sql_e = "SELECT * FROM register WHERE emailid='$emailid'";
  	$res_id = mysqli_query($con, $sql_id) or die(mysqli_error($con));
  	$res_e = mysqli_query($con, $sql_e) or die(mysqli_error($con));
  	if (mysqli_num_rows($res_id) > 0) {
  	  echo "<script type='text/javascript'>alert('sorry..id already taken');
		window.location='index.html#';</script>";	
  	}else if(mysqli_num_rows($res_e) > 0){
  	 echo "<script type='text/javascript'>alert('sorry..email already taken');
		window.location='index.html#';</script>";
  	  }
else{
	$query="insert into register(uniqueID,password,emailid) values ('$uniqueID',
	'$password','$emailid')";

if(mysqli_query($con,$query)){
	echo "<script type='text/javascript'>alert('successfully registered!');
		window.location='index.html';</script>";
	
}
else{
	echo "<script type='text/javascript'>alert('something went wrong');
		window.location='index.html#';</script>";
}

}
exit();
}
if(isset($_POST['uniqueID'])){
	$uniqueID=$_POST['uniqueID'];
	$password=$_POST['password'];
	$sql="select * from register where uniqueID='".$uniqueID."'AND password='".$password."'Limit 1";
	//$sqlid="select *from register where uniqueID='".$uniqueID."'Limit 1";
	//$resid=mysqli_query($con,$sqlid);

	$res=mysqli_query($con,$sql);
	if(mysqli_num_rows($res)==1){
			
		echo "<script type='text/javascript'>alert('successfully loggedin!');
		window.location='home.html';</script>";
	
		exit();
	}
	
	else{
		echo "<script type='text/javascript'>alert('Sorry, unrecognized username or password.');
		window.location='index.html';</script>";
		exit();
	}
}

?>