<?php
include('connection.php');
date_default_timezone_set("Asia/Calcutta");


require_once('geoplugin.class.php');

$geoplugin = new geoPlugin();

//locate the IP

$geoplugin->locate();
$geoplugin->city;
$geoplugin->countryName;
$geoplugin->countryCode;
$geoplugin->region;

if(isset($_POST['submit'])) {
    $city = $geoplugin->city;
    $state = $geoplugin->region;
    $country = $geoplugin->countryName;
    $latitude = $geoplugin->latitude;
    $longitude = $geoplugin->longitude;
    $name=$_POST['nam'];
    $time=date("h:i:sa");


    $insertquery = "insert into formloc(name,city,state,country,latitude,longitude,time) values('$name','$city','$state','$country','$latitude','$longitude','$time')";
    $res = mysqli_query($conn, $insertquery);
    if ($res) {
        ?>
        <script>
            alert('your location data was entered');
        </script><?php
    } else {
        ?>
        <script>
            alert('your location could not be entered');
        </script>
        <?php
    }
}





?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>Form</title>
</head>
<body>
    <section >
        
    
<div class="container bg-primary text-center pt-5 align-content-center mt-4">
    <form  method="post" action="form.php">
        <div class="row">
            <div class="col-md-6">
                <label>Name</label><input type="text" name='nam' placeholder="your name" class="align-items-center" class="ml-auto">
                <button type="submit" name="submit" >Submit</button>

        </div>
    </div>

      

    </form>
    
</div>
</section>

</body>
</html>
