<%@page import="com.Controller.Dao.NewAdmission"%>
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
  margin-top:75px;
  }
  #first,#second{
  margin-top: 50px;
  border:medium;
  border-color:white;
  }
  #hidebtn{
  margin-left:10%;
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
 NewAdmission na=(NewAdmission)request.getAttribute("al");
if(securitycheck!=null)
{
%>




<body  id="body">

<div class="container-fluid" id="home">
<div class="row">
<h3>Modern Institute of Technology & Research Centre </h3>
<h5>[Admin Block]</h5>
</div>
<div class="row">
<a href="home"><button class="btn-primary">Home&nbsp;&nbsp;&nbsp;&nbsp;</button></a>
<a href="newAdmission"><button class="btn-primary" >New Admission&nbsp;&nbsp;&nbsp;</button></a>
<a href="updateAdmission"><button class="btn-primary">Update Admission</button></a>
<a href="readAdmission"><button class="btn-primary">Read Admission&nbsp;&nbsp;&nbsp;</button></a>
<a href="deleteAdmission"><button class="btn-success">Delete Admission&nbsp;&nbsp;</button></a>
<a href="librarianAc"><button class="btn-primary">Librarian Account&nbsp;&nbsp;&nbsp;&nbsp;</button></a>
<a href="changePassword"><button id="ButtonAccountSetting" class="btn-primary">Change Password&nbsp;&nbsp;</button></a>
<a id="ButtonLogout" href="logout"><button class="btn-primary">Logout&nbsp;&nbsp;</button></a>

</div>
</div>

<div class="container">
<div class="row">

<% if(na!=null)
{
%>
<div class="col-md-2"></div>
<div class="col-md-4" id="first">
<label ><b>Registration Number:<%out.print(na.getRegistration_Number()); %></b></label><br><br>
<label><b>Student Name:<%out.print(na.getName()); %></b></label><br><br>
<label><b>Father Name:<%out.print(na.getFatherName()); %></b></label><br><br>
<label><b>Mother Name:<%out.print(na.getMotherName()); %></b></label><br><br>

<form action="deleteAdmission2" id="hidebtn">
<input type="hidden" name="sregistrationNumber" value="<%=na.getRegistration_Number()%>">
<button class="btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;Delete&nbsp;&nbsp;&nbsp;&nbsp;</button>
</form>
</div>

<div class="col-md-4" id="second">
<label><b>D.O.B.:<%out.print(na.getDOB()); %></b></label><br><br>
<label><b>Aadhar Number:<%out.print(na.getAadhar()); %></b></label><br><br>
<label><b>Course:<%out.print(na.getCourse());%>-<%out.print(na.getSubject());%></b></label><br><br>
<label><b>Batch:<%out.print(na.getBatchFrom());%>-<%out.print(na.getBatchTo());%></b></label><br><br>
</div>
<div class="col-md-2"></div>

<% 
}
%>
</div>

</div>
<br><br><br><br>
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