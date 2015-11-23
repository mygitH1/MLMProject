<%@ page language="Java" contentType="text/html" %>

<HTML>
<HEAD>
<TITLE> New Document </TITLE>
</HEAD>

<BODY>
<%
	String str=request.getParameter("link");
	if(str==null){
		str="index.jsp";
		
	}
%>
<table height="100%" width="100%" border="2">
	<tr><td colspan="2" height="10%">
				<jsp:include page="Header.html"/></td></tr>
	<tr>	<td width="10%">
					<jsp:include page="Options.jsp"/></td>
			<td><jsp:include page="<%=str%>" /></td></tr>
	
</table>
</BODY>
</HTML>
