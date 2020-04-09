<?php
session_start();
error_reporting(0);
include('../includes/dbconnection.php');
//error_reporting(0);
if (strlen($_SESSION['uid']==0)) {
  header('location:../logout.php');
  } else{


if(isset($_POST['submit']))
  {
    $eid=$_SESSION['uid'];
    $eidd=$_POST['eidd'];
      $coursepg=$_POST['coursepg'];
    $schoolclgpg=$_POST['schoolclgpg'];
    $yoppg=$_POST['yoppg'];
    $pipg=$_POST['pipg'];
  
   
    
     $query=mysqli_query($con, "insert into watchmenedu( watchmenid,name,age,shift,gateallocated) value('$eidd','$coursepg', '$schoolclgpg', '$yoppg', '$pipg')");
    if ($query) {
    $msg="Your data has been submitted succeesfully.";
  }
  else
    {
      $msg="Something Went Wrong. Please try again.";
    }
  }
  ?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>My Education</title>

  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
  <?php include_once('../includes/watchmensidebar.php')?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
         <?php include_once('../includes/watchmenheader.php')?>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">My Details</h1>

<p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>



<?php 
$empid=$_SESSION['uid'];
$query=mysqli_query($con,"select * from watchmenedu where watchmenid=$empid");
$row=mysqli_fetch_array($query);
if($row>0)
{

?>
<p style="font-size:16px; color:red" align="center">Your details already added. Now you can only edit the record. </p>

<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

<tr>
  <th>WatchmenID</th>
  <td><?php echo $row['watchmenid'];?></td>
</tr>
<tr>
  <th>Name</th>
  <td><?php echo $row['name'];?></td>
</tr>
<tr>
  <th>Age</th>
  <td><?php echo $row['age'];?></td>
</tr>
<tr>
  <th>Shift</th>
  <td><?php echo $row['shift'];?></td>
</tr>
<tr>
  <th>Gate Allocated</th>
  <td><?php echo $row['gateallocated'];?></td>
</tr>



</table>



<?php } else {?>

<form class="user" method="post" action="">
 
               <div class="row">
                <div class="col-4 mb-3">WatchmenID</div>
                   <div class="col-8 mb-3">   <input type="text" class="form-control form-control-user" id="eidd" name="eidd" aria-describedby="emailHelp" value=""></div>
                    </div>  
                    <div class="row">
                      <div class="col-4 mb-3">Name </div>
                     <div class="col-8 mb-3">  <input type="text" class="form-control form-control-user" id="coursepg" name="coursepg" aria-describedby="emailHelp" value=""></div>  
                     </div>



                    <div class="row">
                    <div class="col-4 mb-3">Age</div>
                    <div class="col-8 mb-3">
                      <input type="text" class="form-control form-control-user" id="schoolclgpg" name="schoolclgpg" aria-describedby="emailHelp" value=""></div>
                    </div>

                    <div class="row">
                      <div class="col-4 mb-3">Shift</div>
                     <div class="col-8 mb-3">
                      <input type="text" class="form-control form-control-user" id="yoppg" name="yoppg" aria-describedby="emailHelp" value="">
                    </div></div>
                    <div class="row">
                <div class="col-4 mb-3">GateAllocated</div>
                   <div class="col-8 mb-3">   <input type="text" class="form-control form-control-user" id="pipg" name="pipg" aria-describedby="emailHelp" value="" required="true"></div>
                    </div>  
                    <div class="row" style="margin-top:4%">
                      <div class="col-4"></div>
                      <div class="col-4">
                      <input type="submit" name="submit"  value="submit" class="btn btn-primary btn-user btn-block">
                    </div>
                    </div>
                    
                  
                  </form>
<?php } ?>




        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
   <?php include_once('../includes/footer.php');?>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  

  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
  <!-- Page level plugins -->
  <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="../js/demo/datatables-demo.js"></script>
  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>
  <script type="text/javascript">
    $(".jDate").datepicker({
    format: 'yyyy-mm-dd',
    autoclose: true
}).datepicker("update", "10/10/2016"); 
  </script>

</body>

</html>
<?php }  ?>
