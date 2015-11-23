<!--
<%@ page import="com.impact.mlm.RegDAO,com.impact.mlm.RegistrationVO" %>

<%
	RegistrationVO regvo=(RegistrationVO)session.getAttribute("regvo");
%>
<jsp:setProperty name="regvo" property="*"/>
<%
	if(request.getParameter("action").equals("GETTOPID")){
		RegDAO regdao=new RegDAO();
%>
<jsp:setProperty name="regvo" property="topId" value="<%=regdao.prepareList(regvo.getIntroducerId())%>"/>
<%
	response.sendRedirect("register.jsp");
}
%>





<jsp:getProperty name="regvo" property="address"/><br/>
<jsp:getProperty name="regvo" property="introducerId"/><br/>
<jsp:getProperty name="regvo" property="distributorId"/><br/>
<jsp:getProperty name="regvo" property="topId"/><br/>
<jsp:getProperty name="regvo" property="dname"/><br/>
<jsp:getProperty name="regvo" property="wdsp"/><br/>
<jsp:getProperty name="regvo" property="occupation"/><br/>
<jsp:getProperty name="regvo" property="address"/><br/>
<jsp:getProperty name="regvo" property="city"/><br/>
<jsp:getProperty name="regvo" property="pincode"/><br/>
<jsp:getProperty name="regvo" property="dist"/><br/>
<jsp:getProperty name="regvo" property="state"/><br/>
<jsp:getProperty name="regvo" property="phone"/><br/>
<jsp:getProperty name="regvo" property="mobile"/><br/>
<jsp:getProperty name="regvo" property="email"/><br/>
<jsp:getProperty name="regvo" property="bgroup"/><br/>
<jsp:getProperty name="regvo" property="nominee"/><br/>
<jsp:getProperty name="regvo" property="relation"/><br/>
<jsp:getProperty name="regvo" property="sex"/><br/>
<jsp:getProperty name="regvo" property="nage"/><br/>
<jsp:getProperty name="regvo" property="dob"/><br/>
<jsp:getProperty name="regvo" property="doj"/><br/>
<jsp:getProperty name="regvo" property="wtd"/><br/>
<jsp:getProperty name="regvo" property="pic"/><br/>
<jsp:getProperty name="regvo" property="paytype"/><br/>
<jsp:getProperty name="regvo" property="ddno"/><br/>
<jsp:getProperty name="regvo" property="dddate"/><br/>
<jsp:getProperty name="regvo" property="dip"/><br/>
<jsp:getProperty name="regvo" property="dddrawnon"/><br/>
<jsp:getProperty name="regvo" property="amount"/><br/>
<jsp:getProperty name="regvo" property="spouse"/><br/>
<jsp:getProperty name="regvo" property="due"/><br/>
<jsp:getProperty name="regvo" property="regFee"/><br/>

-->