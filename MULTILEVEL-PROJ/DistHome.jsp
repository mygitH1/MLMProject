<%@ page contentType="text/html" language="java" %>

<html>
<head>
<title>Parivar Associates</title>

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
.style1 {font-family: Georgia, "Times New Roman", Times, serif}
body {
	background-color: #F4EA9D;
}
-->
</style>
</head>

<body>
<table width="100%" height="100%" border="1">
<tr><td width="10%" height="5"><div align="center">
  <h1><span class="style1">Parivar Associates</span></h1>
  <form name="form1" method="post" action="">
    <div align="left">
      <label>Welcome : <%= session.getAttribute("uname")%></label>
</div>
  </form>
  </div>
<ul id="cssdropdown">
<li class="mainitems">
<a href="DistHome.jsp?link=index.jsp">Transactions</a>
<ul class="subuls">
<li><a href="DistHome.jsp?link=Purchase.jsp">Purchase Products</a></li>
</ul>
</li>
<li class="mainitems">
<a href="DistHome.jsp?link=mlmapplet.html">Distributors chain</a>
</li>

<li class="mainitems">
<a href="loginServlet?action=Signout">Sign Out</a>
</li>
</ul>
</td>
</tr>
<%
String link=request.getParameter("link");
System.out.println("Link value : "+link);
if(link==null){
	link="index.jsp";	
}
%>


<tr><td><jsp:include page="<%=link%>" flush="true"/></tr>

</table>
</body>
</html>
