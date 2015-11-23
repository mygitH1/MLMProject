<%@ page contentType="text/html" language="java"  %>
<jsp:useBean id="inc" scope="session" class="com.impact.mlm.IncentiveVO"/>
<jsp:setProperty name="inc" property="distType" value="PD"/>

<%
	if(!inc.getIncentives()){
		out.println("Data not retrieved from incentivesetting table");
	}
%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style2 {font-family: Georgia, "Times New Roman", Times, serif}
body {
	background-color: #F4EA9D;
}
-->
</style>
</head>

<body>
<form name="form1" method="post" action="IncentiveController.jsp">

<p>&nbsp;</p>
<h1 align="center">Parivar Distributor Incentive Settings</h1>
<p align="center">&nbsp; </p>
<div align="center">
  <table width="457" border="0">
    <tr>
      <td>
        <div align="right" class="style2">          PersonalIncentive : </div></td>
      <td width="167">
        <div align="left">
          <input name="pi" type="text" value="<jsp:getProperty name='inc' property='pi'/>">      
        %</div></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style2">From MarketingOfficer </span>: </div></td>
      <td><div align="left">
        <input name="mo" type="text" value="<jsp:getProperty name='inc' property='mo'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right" class="style2">
        <div align="right">From SeniorMarketingOfficer : </div>
      </div></td>
      <td><div align="left">
        <input name="smo" type="text" value="<jsp:getProperty name='inc' property='smo'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style2">From MarketingManager </span>: </div></td>
      <td>
        <div align="left">
          <input name="mm" type="text" value="<jsp:getProperty name='inc' property='mm'/>">
%        </div></td>
    </tr>
    <tr>
      <td><div align="right" class="style2">
        <div align="right">From ZonalMarketingManager : </div>
      </div></td>
      <td><div align="left">
        <input name="zmm" type="text" value="<jsp:getProperty name='inc' property='zmm'/>">
      %</div></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style2">From RegionalMarketingManager </span>: </div></td>
      <td><div align="left">
        <input name="rmm" type="text" value="<jsp:getProperty name='inc' property='rmm'/>">
      %</div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>        <div align="right">
        <input name="distType" type="hidden" value="PD">      
      </div></td>
      <td>
          <div align="right">
            <input name="action" type="submit" id="action" value="Update">
          </div></td>
    </tr>
  </table>
  
</div>
<p align="center">&nbsp;</p>
</form>
</body>
</html>
