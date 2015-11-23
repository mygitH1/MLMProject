<%@ page contentType="text/html" language="java" import="java.util.Collection,java.util.*"  %>
<jsp:useBean id="purchase" scope="session" class="com.impact.mlm.PurchaseVO"/>
<html>
<head>
<title>Untitled Document</title>

<style type="text/css">
<!--
.style1 {font-family: Georgia, "Times New Roman", Times, serif}
body {
	background-color: #F4EA9D;
}
.style2 {
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>

<body>
<form method="post" action="PurchaseController.jsp">
 <div align="center">
   <p>&nbsp;</p>
   <h1 class="style2">PURCHASE FORM   </h1>
 </div>
<div align="center">
  <p>&nbsp;</p>
  <table width="221" border="0">
    <tr>
      <td><div align="right" class="style1">Date:</div></td>
      <td>
      <input type="text" name="date" >
      <div align="right" class="style1"></td>
    </tr>
    <tr>
      <td width="103"><div align="right" class="style1"> 
        DistributorId:</div></td>
      <td width="102">
      <input type="text" name="distributorId" value="<jsp:getProperty name='purchase' property='distributorId'/>" >     </td>
    </tr>
    <tr>
      <td><div align="right"><span class="style1">DistributorName</span>:</div></td>
      <td><input type="text" name="distributorName" value="<jsp:getProperty  name='purchase' property='distributorName'/>"></td>
    </tr>
    <tr>
      <td><div align="right" class="style1">ProductId:</div></td>
      <td> <select name="productId" >
	       
        <% Collection c=purchase.getProducts();
			if(c!=null){
               Iterator iterator=c.iterator();
				while(iterator.hasNext()){
					int value=((Integer)iterator.next()).intValue();
			%>
					<option value="<%= value%>"><%= value%> </option>	
			<%
				}
			}
		%>
 </select>
		</td>

    </tr>
    <tr>
      <td><div align="right"><span class="style1">Quantity:</span></div></td>
      <td><input type="text" name="qty"  value="<jsp:getProperty name='purchase' property='qty'/>"></td>
    </tr>
    <tr>
      <td><div align="right" class="style1"></div></td>
      <td><div align="right">
        <input name="Submit" type="submit" value="Purchases">
      </div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</div>
</form>
</body>
</html>
