<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style .css">

<script type="text/javascript">
        function validate_form() {
            if (document.emp.emp_name.value == "") {
                alert("Please fill in the 'Your Employee Name' box.");
                return false;
            }
            if (document.emp.num.value == "") {
                alert("Enter Employee Number");
                return false;
            }
            alert("sucessfully Submitted");
 
 
 
            if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/).test(document.emp.email_id.value)) {
                alert("You have entered an invalid email address!")
                return (false)
            }
        }
 
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode != 46 && charCode > 31 &&
                (charCode < 48 || charCode > 57)) {
                alert("Enter Number");
                return false;
            }
            return true;
        }
 
 
        //-->
    </script>
</head>
<body>

<div class="topnav" id="myTopnav">
 <img src="images/logo.jpg" class="image1" alt="logo" />
 <a href="loginsystem/admin/index.php">Admin</a>
 <a href="loginsystem/index.php">login/Register</a>
 <a href="contact.php">Contact</a>
 <a href="aboutus.html">About us</a>
 <a href="services.html">Services</a>
 <a href="index.html" class="active">Home</a>
 <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
<myHero>
<h2>JOIN FRONTLINE SECURITY</h2>




</div>
<form name="emp" action="" onsubmit="return validate_form();" method="post">
        <table align="center" width=40% width="100%" cellspacing="2" cellpadding="2" border="5">
            <tr>
                <td colspan="2" align="center"><b>Employee Registration Form.</b></td>
 
            </tr>
            <tr>
                <td align="left" valign="top" width="41%">Employee Name<span style="color:red">*</span></td>
 
                <td width="57%"><input type="text" value="" name="emp_name" size="24"></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="41%">Employee Number<span style="color:red">*</span></td>
                <td width="57%">
                    <input type="text" value="" name="num" onkeypress="return isNumberKey(event)" size="24"></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="41%">Address</td>
 
                <td width="57%"><textarea rows="4" maxlen="200" name="S2" cols="20"></textarea></td>
            </tr <tr>
 
            <td align="left" valign="top" width="41%">Contact Number</td>
            <td width="57%">
                <input type="text" value="" onkeypress="return isNumberKey(event)" name="txtFName1" size="24"></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="41%">Job Location</td>
                <td width="57%"><select name="mydropdown">
<option value="Default">Default</option>
<option value="Chennai">Chennai</option>
<option value="Bangalore">Bangalore</option>
<option value="Chennai">Pune</option>
<option value="Bangalore">Mysore</option>
<option value="Chennai">Chandigarh</option>
 
</select></td>
 
 
            </tr>
 
            <tr>
                <td align="left" valign="top" width="41%">Designation</td>
                <td width="57%">
                    <select name="mydropdown">
<option value="Default">Default</option>
<option value="Systems Engineer">Systems Engineer</option>
<option value="Senior Systems Engineer">Senior Systems Engineer</option>
<option value="Technology Analyst">Technology Analyst</option>
<option value="Technology Lead">Technology Lead</option>
<option value="Project Manager">Project Manager</option>
 
 
</select></td>
 
 
            </tr>
            <tr>
                <td align="left" valign="top" width="41%">Email<span style="color:red">*</span></td>
                <td width="57%">
                    <input type="text" value="" name="email_id" size="24"></td>
            </tr>
 
            <tr>
                <td colspan="2">
                    <p align="center">
                        <input type="submit" value="  Submit" name="B4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="  Reset All   " name="B5"></td>
            </tr>
 
        </table>
    </form></myHero>
</body>
 
</html>