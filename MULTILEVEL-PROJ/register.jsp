<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html><head>

<script language="javascript">
<!--
{
/*function getDetails(){
	document.Registrationform.action="regServlet?action=Details";
	//document.Registrationform.submit();
}*/
}
 -->
</script>
<jsp:useBean id="regvo" scope="session" class="com.impact.mlm.RegistrationVO"/>

<title>Parivar Registration</title>


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #F4EA9D;
}
-->
</style></head>
<body>

<h2 align="center">Registration Form</h2>

<form name="Registrationform" action= "regServlet" method="post">

<table align="center">
<tr>
<td colspan="4"><font face="Times New Roman" size="4" color="Red">Distributor Details:</font></td>
</tr>
<tr>
<td width="185">Distributor ID:</td>
<td width="193"><input name="distributorId" type="text" size="30" value="<jsp:getProperty name='regvo' property='distributorId' />" ></td>
<td width="186">Introducer ID:</td>
<td width="212"><input type="text" size="30" name="introducerId" value="<jsp:getProperty name='regvo' property='introducerId' />">

 <input type="submit" name="action" value="GETTOPID"/>
 </td>
</tr>

<tr>
<td>Distributor Name:</td>
<td><input type="text" size="30" name="dname"></td>
<td>Top ID:</td>
<td><input type="text" size="30" name="topId" value= "<jsp:getProperty name='regvo' property='topId'/>" readonly="true"></td>
</tr>
<tr>
<td colspan="4"><font face="Times New Roman" size="4" color="Red">Personal Details:</font></td>
</tr>

<tr>
<td>Occupation:</td>
<td><input type="text" size="30" name="occupation" value="<jsp:getProperty name='regvo'  property='occupation'/>"></td>
<td>Address:</td>
<td><input type="text" size="30" name="address" value="<jsp:getProperty name='regvo'  property='address'/>"></td>
</tr>

<tr>
<td>City:</td>
<td><input type="text" size="30" name="city" value="<jsp:getProperty name='regvo'  property='city'/>"></td>
<td>PinCode:</td>
<td><input type="text" size="30" name="pincode" value="<jsp:getProperty name='regvo'  property='pincode'/>"></td>
</tr>


<tr>
<td>District:</td>
<td><input type="text" size="30" name="dist" value="<jsp:getProperty name='regvo'  property='dist'/>"></td>
<td>State:</td>
<td><input type="text" size="30" name="state" value="<jsp:getProperty name='regvo'  property='state'/>"></td>
</tr>

<tr>
<td>Phone:</td>
<td><input type="text" size="30" name="phone" value="<jsp:getProperty name='regvo'  property='phone'/>"></td>
<td>Mobile:</td>
<td><input type="text" size="30" name="mobile" value="<jsp:getProperty name='regvo'  property='mobile'/>"></td>
</tr>


<tr>
<td>E-mail:</td>
<td><input type="text" size="30" name="email" value="<jsp:getProperty name='regvo'  property='email'/>"></td>
<td>Blood Group:</td>
<td><input type="text" size="30" name="bgroup" value="<jsp:getProperty name='regvo'  property='bgroup'/>"></td>
</tr>

<tr>
<td>Nominee:</td>
<td><input type="text" size="30" name="nominee" value="<jsp:getProperty name='regvo'  property='nominee'/>"></td>
<td>Relation:</td>
<td><input type="text" size="30" name="relation" value="<jsp:getProperty name='regvo'  property='relation'/>"></td>
</tr>


<tr>
<td>Sex:</td>
<td><input type="radio" name="sex" value="Male">Male
<input type="radio" name="sex" value="Female">Female
</td>
<td>Nominee Age:</td>
<td><input type="text" size="30" name="nage" value="<jsp:getProperty name='regvo'  property='nage'/>"></td>
</tr>


<tr>
<td>Date of Birth:(dd-mm-yyyy)</td>
<td><input type="text" size="30" name="dob" value="<jsp:getProperty name='regvo'  property='dob'/>"></td>
<td>Date of Joining:(dd-mm-yyyy)</td>
<td><input type="text" size="30" name="doj" value="<jsp:getProperty name='regvo'  property='doj'/>"></td>
</tr>


<tr>
<td>Spouse:</td>
<td><input type="text" size="30" name="spouse" value="<jsp:getProperty name='regvo'  property='spouse'/>"></td>
<td>Distributor Picture:</td>
<td><input type="text" size="30" name="pic" value="<jsp:getProperty name='regvo'  property='pic'/>"></td>
</tr>
<tr>
<td><div align="right"><strong><font color="#FF0000">Willing to Donate * </font></strong></div></td>
    <td><input name="wtd" type="radio" value="Yes" checked="checked" />
        <strong><font color="#333333">Yes</font> </strong>
        <input name="wtd" type="radio" value="No" />
        <strong>No </strong></td>
    <td><div align="center"></div></td>
  </tr>



<tr>
<td><div align="left"><font face="Times New Roman" size="4" color="Red">Payment Mode:</font></div></td>
<td><input name="paytype" type="radio" checked="checked" value="dd">
DD
<input type="radio" name="paytype" value="cash">
Cash
</td>
</tr>

<tr>
<td colspan="4"><strong><font size="4"><font face="Times New Roman" size="4" color="Red"><font color="#FF0000">Transactions:</font></font></strong></td>
</tr>

<tr>
<td>DD Number:</td>
<td><input type="text" size="30" name="ddno" value="<jsp:getProperty name='regvo'  property='ddno'/>"></td>
<td>DD Date:</td>
<td><input type="text" size="20" name="dddate" value="<jsp:getProperty name='regvo'  property='dddate'/>">
(dd-mm-yyyy)</td>
</tr>

<tr>
<td>DD Drawn on:(dd-mm-yyyy)</td>
<td><input type="text" size="30" name="dddrawnon" value="<jsp:getProperty name='regvo'  property='dddrawnon'/>"></td>
<td>Amount:</td>
<td><input type="text" size="20" name="amount" value="1011" readonly="true"></td>
</tr>
<tr>
<td>RegistrationFee:</td>
<td><input type="text" size="20" name="regFee" value="295" readonly="true"></td>
<td>Due Registration :</td>
<td><input type="checkbox" name="due" value="1"></td>
</tr>
</table>
<center>
<input type="submit" name="action" value="Save" >
<input type="Reset" name="action" value="Reset">
</center>

</form>
</body>
</html>
