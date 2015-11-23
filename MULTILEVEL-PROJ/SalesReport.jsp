<%@ page contentType="text/html" language="java" %>
<%@ page import="java.sql.*" %>

<%  Connection con=null; 
    Statement stmt=null;
	ResultSet rs=null;
            
    String fromDate= request.getParameter("fromDate");
    String toDate= request.getParameter("toDate");
    try{
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	   con = DriverManager.getConnection("jdbc:odbc:mydsn","pari","parivar");
	   stmt = con.createStatement();
	   String queryText = "select  saleid, distributorid, qty, sdate, productid from sales where sdate between TO_DATE('01-01-2001' ,'DD-MM-YYYY') and TO_DATE('01-01-2006' ,'DD-MM-YYYY')"; 
		   rs = stmt.executeQuery(queryText);
	     

%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #F4EA9D;
}
-->
</style></head>

<body>
   <h1 align="center">Sales Report  </h1>
            <table border="1" align="center" cellpadding="5" cellspacing="0">
			
              <tr> 
                <td> 
                  <div align="right">saleid:</div>
                </td>
                <td> 
                  <div align="right">distributorid:</div>
                </td>
                  <td> 
                  <div align="right">qty:</div>
                </td>
				<td> 
                  <div align="right">sdate:</div>
                </td>
				<td> 
                  <div align="right">productid:</div>
                </td>
              
              
              </tr>
                <tr>
                   <%while(rs.next()) { %>

				   <td><b><%=rs.getInt("saleid")%></b> </td>
				   <td><b><%=rs.getInt("distributorid")%></b> </td>
				   <td><b><%=rs.getInt("qty")%></b> </td>        
                   <td><b><%=rs.getDate("sdate")%></b> </td>        
				   <td><b><%=rs.getInt("productid")%></b> </td>
		      </tr>
					<%}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(con!=null) con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
				   %>
</table>
     
            <form name="form1" method="post" action="AdminHome.jsp?link=index.jsp">
              <table width="3%" height="27"  border="1" align="center">
                <tr>
                  <td><input name="action" type="submit" id="action" value="OK"></td>
                </tr>
              </table>
</form>
<p>&nbsp;</p>
</body>
</html>
