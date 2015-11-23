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
	   String queryText = "select  distributorid, dname,  introducerid, topid  from registration where doj between TO_DATE('"+fromDate+"' ,'DD-MM-YYYY') and TO_DATE('"+toDate+"' ,'DD-MM-YYYY')";
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
   <h1 align="center">DistrinutorList Report  </h1>
            <table border="1" align="center" cellpadding="5" cellspacing="0">
			
              <tr> 
                <td> 
                  <b><div align="right">DistributorId:</div></b>
                </td>
                <td> 
                  <b><div align="right">DistributorName:</div></b>
                </td>
                <td> 
                  <b><div align="right">IntroducerId:</div></b>
                </td>
				<td> 
                  <b><div align="right">TopId:</div></b>
                </td>
                
                
              </tr>
                <tr>
                   <%while(rs.next()) { %>

				   <td><b><%=rs.getInt("distributorid")%></b> </td>
				   <td><b><%=rs.getString("dname")%></b> </td>
				   <td><b><%=rs.getString("introducerid")%></b> </td>
				   <td><b><%=rs.getString("topid")%></b> </td>
				   
				   

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
              <table width="3%" height="36"  border="1" align="center">
                <tr>
                  <td><input name="action" type="submit" id="action" value="OK"></td>
                </tr>
              </table>
            </form>
<p align="center">&nbsp;</p>
</body>
</html>
