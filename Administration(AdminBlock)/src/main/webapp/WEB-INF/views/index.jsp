<%@page import="java.time.LocalTime"%>
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
  <style>
  #form{
  margin-top:15%;
  border:medium;
  border-color:white;
  }
  #body{
  background-color:gray;
  }
  #wrongpass,#msgnotfound{
  color:red;
  margin-left:130px;
  }
  
  
  </style>
</head>
<body id="body">

<div class="container-fluid">
<div class="row">
<h3>Modern Institute of Technology & Research Centre</h3>
<h4>[Admin Block]</h4>
</div>
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<% String msgwrongpass=(String)request.getAttribute("msgwrongpass");
String msgnotfound=(String)request.getAttribute("msgnotfound");

%>

<form action="adminlogin" id="form" method="post">
<%if(msgwrongpass!=null){ %>
<h6 id="wrongpass"><%=msgwrongpass %></h6>
<%}
if(msgnotfound!=null){ %>
<h6 id="msgnotfound"><%=msgnotfound %></h6>
<%} %>
<label for="adminUserName">Enter Username</label>
<input type="email" name="adminUserName" id="adminUserName" class="form-control"><br>
<label for="adminUserPassword">Enter Password</label>
<input type="text" name="adminUserPassword" id="adminUserPassword" class="form-control"><br><br>
<button class="form-control btn-primary">Login</button><br><br><br>

</form>
</div>
<div class="col-md-3">
</div>
</div>
</div>
</body>
</html>