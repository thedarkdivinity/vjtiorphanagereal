<?php
include('connection.php');


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


    $insertquery = "insert into location(city,state,country,latitude,longitude) values('$city','$state','$country','$latitude','$longitude')";
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
<!DOCTYPE html>
<html>
<head>
 <style>
  /* Set the size of the div element that contains the map */
  #map {
   height: 400px;  /* The height is 400 pixels */
   width: 100%;  /* The width is the width of the web page */
  }
 </style>
</head>
<body>


<h3>My Google Maps Demo</h3>
<section>
<form method="post" action="index.php">
    <button type="submit" name="submit">Get Location</button>
</form>

</section>


<!--The div element for the map -->
<div id="map"></div>
<script>
 // Initialize and add the map
 function initMap() {
  // The location of Uluru
  var uluru = {lat: <?php echo $geoplugin->latitude;?>, lng: <?php echo $geoplugin->longitude;?> };
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 4, center: uluru});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: uluru, map: map});
 }
</script>

<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDMXTZxsqLI4OxXx1k3ARUYoD725z8Qc54&callback=initMap">
</script>
</body>
</html>
