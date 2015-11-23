<html>
<head>
<title> Login Page </title>
<style type="text/css">
<!--
.style1 {font-size: 18px}
.style2 {
	color: #FF0000;
	font-size: 24px;
}
body {
	background-color: #FFFFFF;
}
-->
</style>
</head>

<body>

<form action="loginServlet" method="post">
<p align="center" class="style1 style2"> Login </p>
<blockquote>
  <blockquote>
    <table width="344" border="0" align="center">
      <tr>
        <td width="164"><div align="left"><strong>Distrubutor Name : </strong></div></td>
        <td width="164"><input type="text" name="dname" /></td>
      </tr>
      <tr>
        <td><div align="left"><strong>Distributor Id : </strong></div></td>
        <td><input type="password" name="distributorid" /></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center"><strong>
              <input type="submit" name="action"  value="Login" />
              <input type="reset" name="Reset" value="Cancel" />
        </strong></div></td>
        </tr>
    </table>
    </blockquote>
  </blockquote>
<p align="center" class="style1">    <br>
    <br>
        </p>
</form> 
</body>
</html>
