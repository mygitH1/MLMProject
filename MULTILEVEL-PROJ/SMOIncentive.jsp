<%@ page contentType="text/html" language="java" %>
<jsp:useBean id="inc" scope="session" class="com.impact.mlm.IncentiveVO"/>
<jsp:setProperty name="inc" property="distType" value="SMO"/>

<%
	if(!inc.getIncentives()){
		out.println("Data not retrieved from incentivesetting table");
	}
%>

<html>
<head>
<title>Untitled Document</title>

<style type="text/css">
<!--
.style1 {font-family: Georgia, "Times New Roman", Times, serif}
.style2 {font-family: "Times New Roman", Times, serif}
body {
	background-color: #F4EA9D;
}
-->
</style>
</head>

<body>
<form name="form1" method="post" action="IncentiveController.jsp">
  <p>&nbsp;</p>
  <h1 align="center"><span class="style2">Senior Marketing Officer Incentive Settings </span></h1>
  <p>&nbsp;</p>
  <table width="441" border="0" align="center">
    <tr>
      <td width="265"><div align="right" class="style1">Personal Incentive : </div></td>
      <td width="166"><div align="left">
        <input type="text" name="pi" value="<jsp:getProperty name='inc'  property='pi'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right" class="style1">From Perivar Distributor : </div></td>
      <td><div align="left">
        <input type="text" name="pd" value="<jsp:getProperty name='inc' property='pd'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right" class="style1">From Marketing Officer : </div></td>
      <td><div align="left">
        <input name="mo" type="text" value="<jsp:getProperty name='inc' property='mo'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right" class="style1">From Marketing Manager : </div></td>
      <td><div align="left">
        <input type="text" name="mm" value="<jsp:getProperty name='inc' property='mm'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right" class="style1">From Zonal Marketing Manager : </div></td>
      <td><div align="left">
        <input type="text" name="zmm" value="<jsp:getProperty name='inc' property='zmm'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right" class="style1">From Regional Marketing Manager : </div></td>
      <td><div align="left">
        <input type="text" name="rmm" value="<jsp:getProperty name='inc' property='rmm'/>">
      %</div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><div align="left"></div></td>
    </tr>
    <tr>
      <td><input name="distType" type="hidden" id="distType" value="SMO"></td>
      <td>
        <div align="right">
          <input name="action" type="submit" id="action" value="Update">
        </div></td></tr>
  </table>
  <p align="center">&nbsp;</p>
</form>
</body>
</html>
