<%@ page contentType="text/html" language="java" %>
<jsp:useBean id="prom" scope="session" class="com.impact.mlm.PromotionVO"/>

<jsp:setProperty name="prom" property="distType" value="SMO"/>
<%
	if(!prom.getPromotionSetting()){
		out.println("Problem in retreiving values....!");
	}
%>
<html><head><title>Promotional Plan Incentive Settings for Zonal Marketing Manager</title>
<style type="text/css">
<!--
.style1 {font-family: Georgia, "Times New Roman", Times, serif}
-->
</style>
</head>
<body bgcolor="WHITE">
<h1 align="center">Zonal Marketing Manager Promotional Settings</h1>
<form name="f1" method="post">

  <p>&nbsp;</p>
  <table width="468" height="123" align="center">

<tr>
<td width="255"><div align="right"><span class="style1">Product sales Target (in Bottles) :</span></div></td>
<td width="180"><input name="targetsales" type="text" value="<jsp:getProperty name='prom' property='targetsales'/>" size="30"></td>
<td width="17"><input type="hidden" value="PD"> </td>
</tr>


<tr>
<td><div align="right"><span class="style1">Distributor level to produce :</span></div></td>
<td><input name="leveltoproduce" type="text" value="<jsp:getProperty name='prom' property='leveltoproduce'/>" size="30"></td>
</tr>




<tr>
<td><div align="right"><span class="style1">No of distributors to be introduced :</span></div></td>
<td><input name="requiredjoins" type="text" value="<jsp:getProperty name='prom' property='requiredjoins'/>" size="30"></td>
</tr>


<tr>
  <td><div align="right"><span class="style1">Target Duration : </span></div></td>
  <td><input name="targetduration" type="text" value="<jsp:getProperty name='prom' property='targetduration'/>" size="3" />
    <span class="style1">Months </span></td>
  </tr>
<tr>
  <td><div align="right"><span class="style1"></span></div></td>
  <td>&nbsp;</td>
</tr>
<tr>
<td><div align="right"><span class="style1"></span></div></td>
<td><input name="action" type="submit" value="Update" /></td>
</tr>
</table>
<br/>
<center>
</center>
</form>

</body>
</html>
