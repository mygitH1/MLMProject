<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
body {
	background-color: #F4EA9D;
}
.style1 {color: #CC3333}
-->
</style></head>
<body>

<h1 align="center" class="style1">MULTI LEVEL MARKETING </h1>
<p align="center" class="style1">&nbsp;</p>
<hr>
<p align="center" class="style1">&nbsp;</p>
<form name="form1" method="post" action="loginServlet">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="350" height="50" border="0" align="center">
    <tr>
      <td><div align="right">
        <p align="justify">User name : </p>
      </div></td>
      <td width="144"><input name="uname" type="text" id="uname" size="20" maxlength="20"></td>
    </tr>
    <tr>
      <td>Password : </td>
      <td><input name="password" type="password" id="password" size="20" maxlength="20"></td>
    </tr>
    <tr>
      <td><div align="justify">NewUser? <a href="register.jsp" target="_self">Sign Up</a> </div></td>
      <td>
        <div align="justify">
          <input name="action" type="submit" id="action" value="Login">
        </div></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <div align="right"></div>
  <p align="center">&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
<p align="center" class="style1">&nbsp;</p>
</body>
</html>
