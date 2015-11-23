<%@ page import="com.impact.mlm.PurchaseVO" %>

<%
PurchaseVO purchase=(PurchaseVO) session.getAttribute("purchase");
if(purchase!=null){
	System.out.println("Purchase object found in Session...!");
%>
<jsp:setProperty name="purchase" property="*"/>
<%
	if(purchase.setProducts()){
		response.sendRedirect("DistHome.jsp?link=PurchaseSuccess.jsp");
	}else{
		out.println("problem in setProduct Method....!");
	}
}else{
	out.println("Purchase object not found in session....!");
}
%>