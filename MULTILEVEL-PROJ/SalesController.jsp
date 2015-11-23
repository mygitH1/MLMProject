<%@ page import="com.impact.mlm.ProductSales" %>

<%
ProductSales ps=(ProductSales) session.getAttribute("ps");
if(ps!=null){
	System.out.println("ProductSales is not Null ::");
%>
<jsp:setProperty name="ps" property="*"/>
<%if(ps.saleProduct()){
	response.sendRedirect("AdminHome.jsp?link=Salesuccess.jsp");
}else{
	out.println("Problem in saleProduct()");
}
}else{
	out.println("ProductSales instance not found....!");
}
%>