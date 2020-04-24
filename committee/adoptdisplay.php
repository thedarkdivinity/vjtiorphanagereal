<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
      <table class="table table-bordered table-inverse table-responsive">
          <thead class="thead-inverse">
              <tr>
                  <th>ID</th>
                  <th>NAME</th>
                  <th>EMAIL</th>
                  <th>PHONE</th>
                  <th>FAX</th>
                  <th>STREET</th>
                  <th>CITY</th>
                  <th>STATE</th>
                  <th>PINCODE</th>
              </tr>
              </thead>
              <tbody>
                  <?php
                  $conn=mysqli_connect("localhost","root","","ermsdb");
                  if($conn->connect_error){
                    die("Connection failed:".$conn->connect_error);
                  }
                  $sql="SELECT * FROM adoption";
                  $result=$conn->query($sql);
                  if($result->num_rows > 0)
                  {
                    while($row=$result->fetch_assoc()){
                      echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."</td><td>".$row["email"]."</td><td>".$row["phone"]."</td><td>".$row["fax"]."</td><td>".$row["street"]."</td><td>".$row["city"]."</td><td>".$row["state"]."</td><td>".$row["pin"]."</td></tr>";

                    }
                    echo"</table>";
                  

                  }
                  else{
                    echo "0 result";
                  }
                  $conn->close();
                  ?>
                  
              </tbody>
      </table>
      






    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>