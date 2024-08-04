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
  margin-top:95px;
  }
  #form1{
  margin-top:10px;
  }
  #msg{
  color:red;
  margin-top:90px;
  margin-left: 150px;
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
<a href="updateAdmission"><button class="btn-success">Update Admission</button></a>
<a href="readAdmission"><button class="btn-primary">Read Admission&nbsp;&nbsp;&nbsp;</button></a>
<a href="deleteAdmission"><button class="btn-primary">Delete Admission&nbsp;&nbsp;</button></a>
<a href="librarianAc"><button class="btn-primary">Librarian Account&nbsp;&nbsp;&nbsp;&nbsp;</button></a>
<a href="changePassword"><button id="ButtonAccountSetting" class="btn-primary">Change Password&nbsp;&nbsp;</button></a>
<a id="ButtonLogout" href="logout"><button class="btn-primary">Logout&nbsp;&nbsp;</button></a>

</div>
</div>
<%String msg=(String)request.getAttribute("msg");
if(msg!=null)
{%>
<div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<h6 id="msg"><%=msg %></h6>
<form action="updateAdmission1" id="form1">
<label for="registration_number">Registration Number</label>
<input  type="text" name="registration_number"  id="registration_number" class="form-control"><br>
<button class="form-control btn-primary">Update</button>
</form>
</div>
</div>
</div>
<%} else{%>
<div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form action="updateAdmission1" id="form">
<label for="registration_number">Registration Number</label>
<input type="text" name="registration_number" id="registration_number" class="form-control"><br><br>
<button class="form-control btn-primary">Update</button>
</form>
<%} %>
</div>
<div class="col-md-3"></div>
</div>
</div>
<!-- Footer -->
<br><br><br><br><br>
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