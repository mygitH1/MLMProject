<%@ page import="com.impact.mlm.BottleSetting" %>
<%
BottleSetting bs=(BottleSetting) session.getAttribute("bs");
if(request.getParameter("action").equals("Get")){
	%>
	<jsp:setProperty name="bs" property="productid"/>
	<%
	if(bs.getBottleSetting()){
		session.setAttribute("bs",bs);
		response.sendRedirect("AdminHome.jsp?link=BSetting.jsp");
	}else{
		out.println("Problem in retrieving the bottle details....!");
	}
}
if(request.getParameter("action").equals("Save")){
	%>
	<jsp:setProperty name="bs" property="*"/>
	<%
	if(bs.insertData()){
		response.sendRedirect("AdminHome.jsp?link=SettingUpdates.jsp");
	}else{
		out.println("Problem in setting bottle details....!");
	}
}
%>