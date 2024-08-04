<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="org.springframework.web.servlet.mvc.AbstractController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./resources/js/script.js"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
  <style type="text/css">
 #ButtonAccountSetting{
 margin-left:300px;
  }
  #body{
  width: 100%;
  background-color: gray;
  }
  #form{
  margin-left:30px;
  margin-top:50px;
  }
   #footer{
  background-color:#1d3b55 ;
  color:white;
  }
  #footerfirstpart{
 margin-left:10px;
  }
 </style>
</head>
<% String securitycheck=(String)session.getAttribute("securitycheck");
Object rnumber=request.getAttribute("rnumber");
if(securitycheck!=null)
{
%>
<body id="body" onload="newAdmission()">
<div class="container-fluid" id="home">
<div class="row">
<h3>Modern Institute of Technology & Research Centre </h3>
<h5>[Admin Block]</h5>
</div>
<div class="row">
<a href="home"><button class="btn-primary">Home&nbsp;&nbsp;&nbsp;&nbsp;</button></a>
<a href="newAdmission"><button class="btn-success">New Admission&nbsp;&nbsp;&nbsp;</button></a>
<a href="updateAdmission"><button class="btn-primary">Update Admission</button></a>
<a href="readAdmission"><button class="btn-primary">Read Admission&nbsp;&nbsp;&nbsp;</button></a>
<a href="deleteAdmission"><button class="btn-primary">Delete Admission&nbsp;&nbsp;</button></a>
<a href="librarianAc"><button class="btn-primary">Librarian Account&nbsp;&nbsp;&nbsp;&nbsp;</button></a>
<a href="changePassword"><button id="ButtonAccountSetting" class="btn-primary">Change Password&nbsp;&nbsp;</button></a>
<a id="ButtonLogout" href="logout"><button class="btn-primary">Logout&nbsp;&nbsp;</button></a>

</div>
</div>

<!-- form -->
<div class="Container-fluid" id="newAdmissionForm">
<div class="row">
<form action="newAdmissionDataSave" id="form">
<div class="col-md-5">
<label>Registration Number</label>
<input type="text" name="sregistrationNumber" value="<%=rnumber%>" readonly class="form-control"><br><br>
<label>Name</label>
<input type="text" name="sname" class="form-control"><br><br>
<label>Father Name</label>
<input type="text" name="sfname" class="form-control"><br><br>
<label>Mother Name</label>
<input type="text" name="smname" class="form-control"><br><br>
<label>Course</label>
<input type="text" name="scourse" class="form-control"><br><br>
<label>Subject</label>
<input type="text" name="ssubject" class="form-control"><br><br>
<label>D.O.B.</label>
<input type="text" name="sdob" placeholder="DD/MM/YYYY" class="form-control"><br><br>
<label>Aadhar No.</label>
<input type="text" name="saadhar" placeholder="XXXXXXXXXXXX" class="form-control"><br><br>
</div>
<div class="col-md-2"></div>
<div class="col-md-5">
<label><b>Batch:</b></label>&nbsp;&nbsp;&nbsp;<label>From</label>
<input type="text" name="sbatchfrom" placeholder="YYYY" class="form-control"><br><br>
<label>To</label>
<input type="text" name="sbatchto" placeholder="YYYY" class="form-control"><br>

<label><b>Address</b></label><br>
<label>Line 1</label>
<input type="text" name="sadd1" class="form-control"><br><br>
<label>Line 2</label>
<input type="text" name="sadd2" class="form-control"><br><br>
<label>City</label>
<input type="text" name="scity" class="form-control"><br><br>
<label>District</label>
<input type="text" name="sdistrict" class="form-control"><br><br>
<label>State</label>
<input type="text" name="sstate" class="form-control"><br><br>
<label>PIN</label>
<input type="text" name="spin" placeholder="XXXXXX" class="form-control"><br><br>
</div>
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">  <button  class="form-control btn-primary">Save</button><br><br><br></div>
<div class="col-md-3"></div>
</div>
</form>
</div>
</div>
<!-- Footer -->
<footer  id="footer">
<div class="row" >
<br><br>
<div class="col-md-3" >
<h4 id="footerfirstpart">Modern Institute of Technology & Research Centre</h4>
<h6 id="footerfirstpart">[MITRC]</h6>

</div>
<div class="col-md-3">
<b>MITRC COLLEGE CAMPUS:</b><br><br>
<p>Plot No. IS-2036 to 2039, Ramchandrapura Industrial Area,
 Vidhani,Alwar-303905 
 Rajasthan,India.</p>

</div>
<div class="col-md-3">
<b>Contact Us:</b>
<p>www.mitrcalwar.edu.in</p>
<p>1800-121-6789</p>
</div>
<div class="col-md-3">
<b>FOLLOW US ON</b><br><br>
<i class="fa-brands fa-instagram"></i>&nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa-brands fa-facebook"></i>&nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa-brands fa-square-x-twitter"></i>&nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa-brands fa-linkedin"></i>
</div>



</div>

</footer>
</body>
<%}
else{
	response.sendRedirect("return");
}
%>
</html>