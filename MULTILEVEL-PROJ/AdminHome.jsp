<%@ page contentType="text/html" language="java"  %>
<html>
<head>
<title>Untitled Document</title>

<style type="text/css">
#cssdropdown, #cssdropdown ul {
padding: 0;
margin: 0;
list-style: none;
}
#cssdropdown li {
float: left;
position: relative;
}
.mainitems{
border: 1px solid black;
background-color: #FFEEC6;
}
.mainitems a{
margin-left: 6px;
margin-right: 8px;
text-decoration: none;
}
.subuls{
display: none;
width: 20em;
position: absolute;
top: 1.2em;
left: 0;
background-color: lightyellow;
border: 1px solid black;
}
.subuls li{
width: 100%;
}
.subuls li a{
text-decoration: underline;
}

#cssdropdown li>ul { /* to override top and left in browsers other than IE, which will position to the top right of the containing li, rather than bottom left */
top: auto;
left: auto;
}

#cssdropdown li:hover ul, li.over ul { /* lists nested under hovered list items */
display: block;
}

#restofcontent { /*wrap rest of content of the page inside this div*/
clear: left;
}

</style>
<script type="text/javascript"><!--//--><![CDATA[//><!--
startList = function() {
if (document.all&&document.getElementById) {
cssdropdownRoot = document.getElementById("cssdropdown");
for (x=0; x<cssdropdownRoot.childNodes.length; x++) {
node = cssdropdownRoot.childNodes[x];
if (node.nodeName=="LI") {
node.onmouseover=function() {
this.className+=" over";
}
node.onmouseout=function() {
this.className=this.className.replace(" over", "");
}
}
}
}
}

if (window.attachEvent)
window.attachEvent("onload", startList)
else
window.onload=startList;

//--><!]]></script>

<style type="text/css">
<!--
body {
	background-color: #F4EA9D;
}
.style4 {font-family: "Times New Roman", Times, serif}
-->
</style></head>
<body>
<%
String link=request.getParameter("link");
System.out.println("Link value : "+link);
if(link==null){
	link="index.jsp";	
}
%>

<table border="0" width="100%" height="100%">
<tr><td height="10%">
<h1 align="center"><span class="style4">Administrator</span></h1>

<ul id="cssdropdown">
<li class="mainitems">
<a href="AdminHome.jsp?link=index.jsp">Incentive Settings</a>
<ul class="subuls">
<li><a href="AdminHome.jsp?link=NDIncentive.jsp">New Distributor</a></li>
<li><a href="AdminHome.jsp?link=PDIncentive.jsp">Parivar Distributor</a></li>
<li><a href="AdminHome.jsp?link=MOIncentive.jsp">Marketing Officer</a></li>
<li><a href="AdminHome.jsp?link=SMOIncentive.jsp">Senior Marketing Officer</a></li>
<li><a href="AdminHome.jsp?link=MMIncentive.jsp">Marketing Manager</a></li>
<li><a href="AdminHome.jsp?link=ZMMIncentive.jsp">Zonal Marketing Manager</a></li>
<li><a href="AdminHome.jsp?link=RMMIncentive.jsp">Regional Marketing Manager</a></li>
</ul>
</li>
<li class="mainitems">
<a href="AdminHome.jsp?link=index.jsp">Other Sttings</a>
<ul class="subuls" style="width: 15em">
<li><a href="AdminHome.jsp?link=RFSetting.jsp">Registration Fee Sttings</a></li>
<li><a href="AdminHome.jsp?link=BSetting.jsp">Bottle Settings</a></li>
</ul>
</li>
<li class="mainitems">
<a href="AdminHome.jsp?link=Sales.jsp">Product Sales</a>
</li>
<li class="mainitems">
<a href="AdminHome.jsp?link=index.jsp">Reports </a>
<ul class="subuls" style="width: 15em">
<li><a href="AdminHome.jsp?link=sale.jsp">Sales Reports</a></li>
<li><a href="AdminHome.jsp?link=Purchases.jsp">Purchase Reports</a></li>
<li><a href="AdminHome.jsp?link=Distributors.jsp">Distributors Reports</a></li>
</ul>
</li>

<li class="mainitems">
<a href="AdminHome.jsp?link=mlmapplet.html">Distributors chain</a>
</li>

<li class="mainitems">
<a href="loginServlet?action=Signout">Sign Out</a>
</li>
</ul>
<div id="restofcontent"></div>
</td></tr>
<tr><td><jsp:include page="<%=link%>" flush="true"/></td></tr>
</table>
</body>
</html>
