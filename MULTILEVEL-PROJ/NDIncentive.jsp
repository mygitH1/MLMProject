<%@ page contentType="text/html" language="java"  %>
<jsp:useBean id="inc" scope="session" class="com.impact.mlm.IncentiveVO"/>
<jsp:setProperty name="inc" property="distType" value="NM"/>

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
<h1 align="center">New Distributor Incentive Settings</h1>
<p align="center">&nbsp; </p>
<div align="center">
  <table width="442" border="0">
    <tr>
      <td width="266" class="style2"><div align="right">PersonalIncentive<strong> : </strong></div></td>
      <td width="166">
        <div align="left">
          <input name="pi" type="text" value="<jsp:getProperty name='inc' property='pi'/>">      
        %</div></td>
    </tr>
    <tr>
      <td class="style2"><div align="right" class="style2"> From ParivarDistributor: </div></td>
      <td><div align="left">
        <input name="pd" type="text" value="<jsp:getProperty name='inc' property='pd'/>">
      %</div></td>
    </tr>
    <tr>
      <td class="style2"><div align="right" class="style2">From MarketingOfficer : </div></td>
      <td><div align="left">
        <input name="mo" type="text" value="<jsp:getProperty name='inc' property='mo'/>">
      %</div></td>
    </tr>
    <tr>
      <td class="style2"><div align="right"><span class="style2">From SeniorMarketingOfficer </span><strong><span class="style2">: </span></strong></div></td>
      <td><div align="left">
        <input name="smo" type="text" value="<jsp:getProperty name='inc' property='smo'/>">
      %</div></td>
    </tr>
    <tr>
      <td class="style2"><div align="right" class="style2">From MarketingManager : </div></td>
      <td>
          <div align="left">
            <input name="mm" type="text" value="<jsp:getProperty name='inc' property='mm'/>">
%        </div></td></tr>
    <tr>
      <td class="style2"><div align="right" class="style2">From ZonalMarketingManager : </div></td>
      <td><div align="left">
        <input name="zmm" type="text" id="zmm" value="<jsp:getProperty name='inc' property='zmm'/>">
      %</div></td>
    </tr>
    <tr>
      <td class="style2"><div align="right">From RegionalMarketingManager : </div></td>
      <td><div align="left">
        <input name="rmm" type="text" value="<jsp:getProperty name='inc' property='rmm'/>">
      %</div></td>
    </tr>
    <tr>
      <td class="style2">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="style2"><input name="distType" type="hidden" value="ND"></td>
      <td>
          <div align="right">
            <input name="action" type="submit"  value="Update">
            </div></td></tr>
  </table>
  
</div>
<p align="center">&nbsp;</p>
</form>
</body>
</html>
