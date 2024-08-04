<%@page import="com.Controller.Dao.NewAdmission"%>
<%@page import="java.util.List"%>
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
</head>
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
  #data{
  color: white;
  }
   #footer{
  background-color:#1d3b55 ;
  color:white;
  }
  #footerfirstpart{
 margin-left:10px;
  }
 </style>
<body   id="body">
<%
List<NewAdmission> al=(List<NewAdmission>)request.getAttribute("al"); 
String securitycheck=(String)session.getAttribute("securitycheck");
if(securitycheck!=null)
{
%>
<div class="container-fluid" id="home">
<div class="row">
<h3>Modern Institute of Technology & Research Centre </h3>
<h5>[Admin Block]</h5>
</div>
<div class="row">
<a href="home"><button class="btn-primary">Home&nbsp;&nbsp;&nbsp;&nbsp;</button></a>
<a href="newAdmission"><button class="btn-primary">New Admission&nbsp;&nbsp;&nbsp;</button></a>
<a href="updateAdmission"><button class="btn-primary">Update Admission</button></a>
<a href="readAdmission"><button class="btn-success">Read Admission&nbsp;&nbsp;&nbsp;</button></a>
<a href="deleteAdmission"><button class="btn-primary">Delete Admission&nbsp;&nbsp;</button></a>
<a href="librarianAc"><button class="btn-primary">Librarian Account&nbsp;&nbsp;&nbsp;&nbsp;</button></a>
<a href="changePassword"><button id="ButtonAccountSetting" class="btn-primary">Change Password&nbsp;&nbsp;</button></a>
<a id="ButtonLogout" href="logout"><button class="btn-primary">Logout&nbsp;&nbsp;</button></a>

</div>
</div>
<br><br>
<table class="table table-striped">
<thead>
<tr>
<th>Registration Number</th>
<th>Student Name</th>
<th>Father Name</th>
<th>Mother Name</th>
<th>Course</th>
<th>Subject</th>
<th>D.O.B.</th>
<th>Aadahar Number</th>
<th>Batch From</th>
<th>Batch To</th>
<th>Address Line1</th>
<th>Address Line2</th>
<th>City</th>
<th>District</th>
<th>State</th>
<th>PIN</th>
</tr>
<%
for(NewAdmission all:al)
{
%>
<tr>
<td id="data"><%out.print(all.getRegistration_Number()); %></td>
<td><%out.print(all.getName()); %></td>
<td><%out.print(all.getFatherName()); %></td>
<td><%out.print(all.getMotherName()); %></td>
<td><%out.print(all.getCourse()); %></td>
<td><%out.print(all.getSubject()); %></td>
<td><%out.print(all.getDOB()); %></td>
<td><%out.print(all.getAadhar()); %></td>
<td><%out.print(all.getBatchFrom()); %></td>
<td><%out.print(all.getBatchTo()) ;%></td>
<td><%out.print(all.getAdddressLine1()); %></td>
<td><%out.print(all.getAddressLine2()); %></td>
<td><%out.print(all.getCity()); %></td>
<td><%out.print(all.getDistrict()); %></td>
<td><%out.print(all.getState()); %></td>
<td><%out.print(all.getPIN()); %></td>
</tr>
<%} %>

</thead>
</table>

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
<%}else
	{
	response.sendRedirect("return");
	}
	%>
</html>