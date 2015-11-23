<%@ page contentType="text/html" language="java" import="java.util.Vector,java.util.Iterator,java.util.Date" %>
<jsp:useBean id="ps" scope="session" class="com.impact.mlm.ProductSales"/>
<%
Vector ids=ps.getProductidList();
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
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>

<body>
<form name="form1" method="post" action="SalesController.jsp">
  <h1 align="center">Sales Form </h1>
  <p>&nbsp;</p>
  <table width="56%"  border="0" align="center">
    <tr>
      <td colspan="2">
        <div align="right" class="style1">
          <label>Distributor Id :
          <input name="distributorid" type="text" value="<jsp:getProperty name='ps' property='distributorid'/>" >
</label>
        </div></td>
      <td width="45%"><div align="right" class="style1">
        <label>Sales Id : </label>
        <input name="saleid" type="text" value="<%=ps.getSalesId()%>" readonly="true">        
      </div></td>
    </tr>
    <tr>
      <td colspan="2">        <div align="right" class="style1">
          </div></td>
		  <%
		  Date date=new Date();
		  %>
      <td><div align="right" class="style1">Date : 
          <input name="sdate" type="text" 
		  value="<%= (date.getDate()+"-"+(date.getMonth()+1)+"-"+(date.getYear()+1900))%>" readonly="true">
      </div></td>
    </tr>
    <tr>
      <td width="22%">&nbsp;</td>
      <td width="33%"><span class="style1"></span></td>
      <td><div align="right" class="style1">
          <label>Qualtity : </label>
          <input name="qty" type="text" value="<jsp:getProperty name='ps' property='qty'/>">
      </div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><span class="style1"></span></td>
      <td><div align="right" class="style1">Product Id : 
          <select name="productid">
		  <option value="<jsp:getProperty name='ps' property='productid'/>">
		  <%
		  Iterator list=ids.iterator();
		  while(list.hasNext()){
			  int prodid=((Integer)list.next()).intValue();
		  %>
			<option value="<%= prodid %>"><%= prodid %></option>
				<%
		  }
			  %>
          </select>
      </div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><span class="style1"></span></td>
      <td><span class="style1"></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><span class="style1"></span></td>
      <td><span class="style1"></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><span class="style1"></span></td>
      <td><div align="right"><span class="style1">
        <input name="action" type="submit" id="action" value="Sale">
      </span></div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><span class="style1"></span></td>
      <td><span class="style1"></span></td>
    </tr>
  </table>
</form>
</body>
</html>
