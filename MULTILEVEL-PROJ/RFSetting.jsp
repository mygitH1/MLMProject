<%@ page contentType="text/html" language="java" %>
<jsp:useBean id="regfee" scope="session" class="com.impact.mlm.RegFeeSetting"/>
<%
	if(!regfee.getRegFeeSetting()){
		out.println("Data not retrieved from database......!");
	}
%>
<html>
<head>
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-family: "Times New Roman", Times, serif}
.style2 {font-family: Georgia, "Times New Roman", Times, serif}
body {
	background-color: #F4EA9D;
}
-->
</style>
</head>

<body>
<form name="form1" method="post" action="RFSController.jsp">
  <h1 align="center" class="style1">Registration Fee Settings </h1>
  <p>&nbsp;</p>
  <table width="40%" height="30%" border="0" align="center">
    <tr>
      <td><div align="right"><span class="style2">Bottle Cost : </span></div></td>
      <td><input name="bottlecost" type="text" value="<jsp:getProperty name='regfee' property='bottlecost'/>"></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style2">Bottle Cost Incentive : </span></div></td>
      <td><input name="bottlecostincentive" type="text" value="<jsp:getProperty name='regfee' property='bottlecostincentive'/>">
      %</td>
    </tr>
    <tr>
      <td><div align="right"><span class="style2">Discount : </span></div></td>
      <td><input name="discount" type="text" value="<jsp:getProperty name='regfee' property='discount'/>">
      %</td>
    </tr>
    <tr>
      <td><div align="right"><span class="style2">Registration Fee : </span></div></td>
      <td><input name="regfees" type="text" value="<jsp:getProperty name='regfee' property='regfees'/>"></td>
    </tr>
    <tr>
      <td><div align="right" class="style2">Service Tax : </div></td>
      <td><input name="servicetax" type="text" value="<jsp:getProperty name='regfee' property='servicetax'/>">
      %</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input name="action" type="submit" id="action" value="Update"></td>
    </tr>
  </table>
</form>
</body>
</html>
