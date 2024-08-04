<%@page import="com.Controller.Dao.NewAdmission"%>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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
<%

 String securitycheck=(String)session.getAttribute("securitycheck");
NewAdmission al=(NewAdmission)request.getAttribute("al");
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
<a href="newAdmission"><button class="btn-primary">New Admission&nbsp;&nbsp;&nbsp;</button></a>
<a href="updateAdmission"><button class="btn-success">Update Admission</button></a>
<a href="readAdmission"><button class="btn-primary">Read Admission&nbsp;&nbsp;&nbsp;</button></a>
<a href="deleteAdmission"><button class="btn-primary">Delete Admission&nbsp;&nbsp;</button></a>
<a href="librarianAc"><button class="btn-primary">Librarian Account&nbsp;&nbsp;&nbsp;&nbsp;</button></a>
<a href="changePassword"><button id="ButtonAccountSetting" class="btn-primary">Change Password&nbsp;&nbsp;&nbsp;</button></a>
<a id="ButtonLogout" href="logout"><button class="btn-primary">Logout&nbsp;&nbsp;&nbsp;</button></a>

</div>
</div>

<!-- form -->
<div class="Container-fluid" id="newAdmissionForm">
<div class="row">
<form action="updateAdmission2" id="form">
<div class="col-md-6">
<label><b>Registration Number</b></label>
<input type="text" name="sregistrationNumber" value="<%=al.getRegistration_Number()%>" readonly class="form-control"><br><br>
<label>Name</label>
<input type="text" name="sname" value="<%=al.getName()%>" class="form-control"><br><br>
<label>Father Name</label>
<input type="text" name="sfname" value="<%=al.getFatherName()%>" class="form-control"><br><br>
<label>Mother Name</label>
<input type="text" name="smname" value="<%=al.getMotherName()%>"  class="form-control"><br><br>
<label>Course</label>
<input type="text" name="scourse" value="<%=al.getCourse()%>" class="form-control"><br><br>
<label>Subject</label>
<input type="text" name="ssubject" value="<%=al.getSubject()%>" class="form-control"><br><br>
<label>D.O.B.</label>
<input type="text" name="sdob" value="<%=al.getDOB()%>" class="form-control"><br><br>
<label>Aadhar No.</label>
<input type="text" name="saadhar" value="<%=al.getAadhar()%>" class="form-control"><br><br>
</div>
<div class="col-md-6">
<label><b>Batch:</b></label>&nbsp;&nbsp;<label>From</label>
<input type="text" name="sbatchfrom" value="<%=al.getBatchFrom()%>"class="form-control"><br><br>
<label>To</label>
<input type="text" name="sbatchto" value="<%=al.getBatchTo()%>" class="form-control"><br>

<label><b>Address</b></label><br>
<label>Line 1</label>
<input type="text" name="sadd1" value="<%=al.getAdddressLine1()%>" class="form-control"><br><br>
<label>Line 2</label>
<input type="text" name="sadd2" value="<%=al.getAddressLine2()%>" class="form-control"><br><br>
<label>City</label>
<input type="text" name="scity" value="<%=al.getCity()%>" class="form-control"><br><br>
<label>District</label>
<input type="text" name="sdistrict" value="<%=al.getDistrict()%>" class="form-control"><br><br>
<label>State</label>
<input type="text" name="sstate" value="<%=al.getState()%>" class="form-control"><br><br>
<label>PIN</label>
<input type="text" name="spin" value="<%=al.getPIN()%>" class="form-control"><br><br>
</div>
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">  <button  class="form-control btn-primary">Update</button><br><br><br></div>
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