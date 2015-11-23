<%@ page import="com.impact.mlm.IncentiveVO" %>
<%
	IncentiveVO inc=(IncentiveVO) session.getAttribute("inc");
	if(inc!=null){
%>
		<jsp:setProperty name="inc" property="*"/>
<%
		if(inc.insertData()){
			inc.getIncentives();
			response.sendRedirect("AdminHome.jsp?link=SettingUpdates.jsp");
		}else{
			out.println("Incentives settings failed.....!");
		}
	}else{
		out.println("IncentiveVO Object not found...!");
	}
%>