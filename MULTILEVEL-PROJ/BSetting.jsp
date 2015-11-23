<%@ page contentType="text/html" language="java" import="java.util.Collection,java.util.Iterator"%>
<jsp:useBean id="bs" scope="session" class="com.impact.mlm.BottleSetting"/>
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
<form name="form1" method="post" action="BottleController.jsp">
  <p>&nbsp;</p>
  <h1 align="center"><span class="style2">Bottle Settings </span></h1>
  <p>&nbsp;</p>
  <table width="40%"  border="0" align="center">
    <tr>
      <td><div align="right"><span class="style1"><span class="style1">Product ID : </span></span></div></td>
      <td><select name="productid">
        <option value="<jsp:getProperty name='bs' property='productid'/>" selected><jsp:getProperty name='bs' property='productid'/> </option>
		<%
			Collection list=bs.getProductList();
			if(list!=null){
				Iterator it=list.iterator();
				while(it.hasNext()){
					int value=((Integer)it.next()).intValue();
			%>
					<option value="<%= value%>"><%= value%> </option>	
			<%
				}
			}
		%>

      </select>
      <input name="action" type="submit" value="Get"></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style1">Product Name : </span></div></td>
      <td><input name="productname" type="text" value="<jsp:getProperty name='bs' property='productname'/>"></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style1"><span class="style1">Product Rate : </span></span></div></td>
      <td><input name="productrate" type="text" value="<jsp:getProperty name='bs' property='productrate'/>"></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style1">Product Description : </span></div></td>
      <td><textarea name="productdescription" value="<jsp:getProperty name='bs' property='productdescription'/>"></textarea></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style1"><span class="style1"></span></span></div></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="right"><span class="style1"><span class="style1"></span></span></div></td>
      <td><input name="action" type="submit" value="Save"></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
</body>
</html>
