<%@ page contentType="text/html" language="java"  %>
<jsp:useBean id="inc" scope="session" class="com.impact.mlm.IncentiveVO"/>
<jsp:setProperty name="inc" property="distType" value="MO"/>


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
body {
	background-color: #F4EA9D;
}
-->
</style>
</head>

<body>
<form name="form1" method="post" action="IncentiveController.jsp">

<p>&nbsp;</p>
<h1 align="center">Marketing Officer Incentive Settings </h1>
<p>&nbsp;</p>
<div align="center">
  <table width="452" border="0">
    <tr>
      <td width="276"><div align="right" class="style1">PersonalIncentive : </div></td>
      <td width="166">
        <div align="left">
          <input name="pi" type="text" value="<jsp:getProperty name='inc' property='pi'/>">      
        %</div></td>
    </tr>
    <tr>
      <td><div align="right" class="style1"> From ParivarDistributor : </div></td>
      <td><div align="left">
        <input name="pd" type="text" value="<jsp:getProperty name='inc' property='pd'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right" class="style1">From SeniorMarketingOfficer : </div></td>
      <td><div align="left">
        <input name="smo" type="text" value="<jsp:getProperty name='inc' property='smo'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right" class="style1">From MarketingManager : </div></td>
      <td>
          <div align="left">
            <input name="mm" type="text" value="<jsp:getProperty name='inc' property='mm'/>">
%        </div></td></tr>
    <tr>
      <td><div align="right"><span class="style1">From ZonalMarketingManage</span>r : </div></td>
      <td><div align="left">
        <input name="zmm" type="text" value="<jsp:getProperty name='inc' property='zmm'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style1"> From RegionalMarketingManager : </span></div></td>
      <td><div align="left">
        <input name="rmm" type="text" value="<jsp:getProperty name='inc' property='rmm'/>">
      %</div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="right">
        <input name="distType" type="hidden" value="MO">
      </div></td>
      <td>
          <div align="right">
            <input name="action" type="submit" value="Update">
            </div></td></tr>
  </table>
  
</div>
<p align="center">&nbsp;</p>
</form>
</body>
</html>
