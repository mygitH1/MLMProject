<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style1 {
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
}
body {
	background-color: #F4EA9D;
}
-->
</style>
</head>

<body>
<form name="form1" method="post" action="AdminHome.jsp?link=DistributorsList.jsp">

<div align="center">
  <p>&nbsp;</p>
  <h1 class="style1">DistributorsListReport</h1>
  <table width="638" height="69" border="1">
    <tr>
      <td width="163" height="33"><p>FromDate(dd-mm-yyyy) : </p>
        </td>
      <td width="147"><input type="text" name="fromDate">
    </td>
      <td width="156">ToDate (dd-mm-yyyy) : </td>
      <td width="144"><input type="text" name="toDate"></td>
    </tr>
    <tr>
      <td height="28" colspan="4"> <div align="right">
        <input name="action" type="submit" id="action" value="ShowReport">
		 
      </div></td>
      </tr>
  </table>
</div>
</form>
</body>
</html>
