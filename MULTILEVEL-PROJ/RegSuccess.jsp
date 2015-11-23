<%@ page contentType="text/html" language="java" import="java.util.Vector"%>
<%  Vector user_pass=(Vector)session.getAttribute("user_pass");
if(user_pass==null){
	out.println("Sorry! Object not found.");
}
%>
<html>
<head>
<title>Untitled Document</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #F4EA9D;
}
-->
</style></head>

<body>
<form name="form1" method="post" action="Homepage.jsp">
  <h1 align="center">Congratulations! Registration Successful</h1>
  <p>&nbsp;</p>
  <p align="center"><label>User name : </label>
  
    &nbsp;<%= user_pass.get(0) %></p>
  <p align="center"><label>Password : </label>&nbsp;<%= user_pass.get(1) %></p>
  <p align="center">
    <input name="action" type="submit" id="action" value="OK">
  </p>
  <p>&nbsp;</p>
</form>
</body>
</html>
