<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
body {
	background-color: #F4EA9D;
}
.style1 {
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
}
-->
</style></head>

<body>
<form name="form1" method="post" action="AdminHome.jsp?link=SalesReport.jsp">

<div align="center">
  <p>&nbsp;</p>
  <h1 class="style1">SalesReport</h1>
  <table width="628" height="68" border="1">
    <tr>
      <td width="165">FromDate(dd-mm-yyyy)</td>
      <td width="148"><input type="text" name="fromDate">
    </td>
      <td width="143">ToDate(dd-mm-yyyy)</td>
      <td width="144"><input type="text" name="toDate"></td>
    </tr>
    <tr>
      <td height="28" colspan="4"> <div align="right">
        <input name="Submit" type="submit" value="ShowReport">
      </div></td>
      </tr>
  </table>
</div>
</form>
</body>
</html>
