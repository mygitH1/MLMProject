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
<form name="form1" method="post" action="AdminHome.jsp?link=PurchaseReport.jsp">

<div align="center">
  <p>&nbsp;</p>
  <h1 class="style1">PurchasesReport</h1>
  <table width="647" border="1">
    <tr>
      <td width="174">FromDate(dd-mm-yyyy)</td>
      <td width="152"><input type="text" name="fromDate">
    </td>
      <td width="148">ToDate(dd-mm-yyyy)</td>
      <td width="145"><input type="text" name="toDate"></td>
    </tr>
    <tr>
      <td colspan="4"> <div align="right">
        <input name="action" type="submit" id="action" value="ShowReport">

      </div></td>
      </tr>
  </table>
</div>
</form>
</body>
</html>
