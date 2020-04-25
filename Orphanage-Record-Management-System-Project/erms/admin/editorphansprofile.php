<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
//error_reporting(0);
if (strlen($_SESSION['aid']==0)) {
  header('location:logout.php');
  } else{


if(isset($_POST['submit']))
  {
      
    $eid=$_GET['editid'];
    echo $eid;
    $Fname=$_POST['Fname'];
    $Lname=$_POST['LastName'];
    $OrphansCode=$_POST['OrphansCode'];
    $age=$_POST['age'];
    $healthissues=$_POST['healthissues'];
    $contactno=$_POST['contactno'];
    $gender=$_POST['gender'];
    $joiningdate=$_POST['joingdate'];
    
     $query=mysqli_query($con, "update orphansdetail set Fname='$Fname',  Lname='$Lname', OrphansCode='$OrphansCode', age='$age', healthissues='$healthissues', contactno='$contactno', gender='$gender',joiningdate='$joiningdate' where ID='$eid'");
    if ($query) {
    $msg="Orphans profile has been updated.";
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

  <title>Edit Orphans Profile</title>

  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
  <?php include_once('includes/sidebar.php')?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
         <?php include_once('includes/header.php')?>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Edit Orphans Profile</h1>

<p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>

<form class="user" method="post" action="">
  <?php
$aid=$_GET['editid'];
$ret=mysqli_query($con,"select * from orphansdetail where ID='$aid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
               <div class="row">
                <div class="col-4 mb-3">First Name</div>
                   <div class="col-8 mb-3">   <input type="text" class="form-control form-control-user" id="Fname" name="Fname" aria-describedby="emailHelp" value="<?php  echo $row['Fname'];?>"></div>
                    </div>  
                    <div class="row">
                      <div class="col-4 mb-3">Last Name </div>
                     <div class="col-8 mb-3">  <input type="text" class="form-control form-control-user" id="Lname" name="Lname" aria-describedby="emailHelp" value="<?php  echo $row['Lname'];?>"></div>  
                     </div>



                    <div class="row">
                    <div class="col-4 mb-3">Orphans Code </div>
                    <div class="col-8 mb-3">
                      <input type="text" class="form-control form-control-user" id="EmpCode" name="OrphansCode" aria-describedby="emailHelp" value="<?php  echo $row['OrphansCode'];?>"></div>
                    </div>

                    <div class="row">
                      <div class="col-4 mb-3">Age</div>
                     <div class="col-8 mb-3">
                      <input type="text" class="form-control form-control-user" id="EmpDept" name="age" aria-describedby="emailHelp" value="<?php  echo $row['age'];?>">
                    </div></div>
                    <div class="row">
                    <div class="col-4 mb-3">Orphans Health Issues</div>

                    <div class="col-8 mb-3">
                      <input type="text" class="form-control form-control-user" id="EmpDesignation" name="healthissues" aria-describedby="emailHelp" value="<?php  echo $row['healthissues'];?>">
                    </div></div>
                    <div class="row">
                      <div class="col-4 mb-3">Orphans Contact No.</div>
                    <div class="col-8 mb-3">
                      <input type="text" class="form-control form-control-user" id="EmpContactNo" name="contactno" aria-describedby="emailHelp" value="<?php  echo $row['contactno'];?>">
                    </div></div>
                    <div class="row">
                    <div class="col-4 mb-3">Email</div>
                   <div class="col-8 mb-3">
                      <input type="email" class="form-control form-control-user" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter Email Address..." value="<?php  echo $row['email'];?>" readonly="true">
                    </div></div>
                
                    <div class="row">
                      <div class="col-4 mb-3">Orphans Joing Date(yyyy-mm-dd)</div>
                    <div class="col-8  mb-3">
                      <input type="text" class="form-control form-control-user" value="<?php  echo $row['joingdate'];?>" id="joiningdate" name="joingdate" aria-describedby="emailHelp">
                    </div></div>
                    <div class="row">
                      <div class="col-4 mb-3">Gender</div>
                    <div class="col-4 mb-3">
                    
<?php if($row['EmpGender']=="Male")
{?>
                      <input type="radio" id="gender" name="gender" value="Male" checked="true">Male

                     <input type="radio" name="gender" value="Female">Female
                   <?php }  else {?>
 <input type="radio" id="gender" name="gender" value="Male" >Male
  <input type="radio" name="gender" value="Female" checked="true">Female
                   <?php }?>
                    </div></div>
<?php } ?>
                    <div class="row" style="margin-top:4%">
                      <div class="col-4"></div>
                      <div class="col-4">
                      <input type="submit" name="submit"  value="Update" class="btn btn-primary btn-user btn-block">
                    </div>
                    </div>
                  
                  </form>





        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
   <?php include_once('includes/footer.php');?>
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
