<%@ page import="com.impact.mlm.PromotionVO" %>
<%
	PromotionVO pro=(PromotionVO) session.getAttribute("prom");
	if(pro!=null){
%>
		<jsp:setProperty name="pro" property="*"/>
<%
		if(pro.insertData()){
			pro.getPromotions();
			out.println("Promotion settings Updated successfully....!");
		}else{
			out.println("Promotion settings failed.....!");
		}
	}else{
		out.println("PromotionVO Object not found...!");
	}
%>