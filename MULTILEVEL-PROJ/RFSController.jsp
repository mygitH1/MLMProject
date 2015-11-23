<%@ page import="com.impact.mlm.RegFeeSetting" %>
<%
	RegFeeSetting regfee=(RegFeeSetting)session.getAttribute("regfee");
	if(regfee!=null){
%>
	<jsp:setProperty name="regfee" property="*"/>
<%
		if(regfee.insertData()){
			response.sendRedirect("AdminHome.jsp?link=SettingUpdates.jsp");
		}else{
			out.println("Registration settings proccess failed....!");
		}
	}
%>