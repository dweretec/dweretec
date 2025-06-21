<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
     prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
    prefix="fn" %>
<html>
<head><title>User registration form</title>
<link href="/css/dwt.css" rel="stylesheet" type="text/css">
</head>
<script src="js/dwtcontent.js" type="text/javascript"> </script>
<body>
<p align="left"><b> Login <hr> 
<p align="center"><b>Please login to continue</b> <hr> 
<form name="frmLogin" id="frmLoginId">
<table align="center" class="circular"><tr>
  <td width="136" align="right">
Email address:</td><td width="185" colspan="2"> 
<input type="text" name="username" size="30" class="circular" /> 
<input type="hidden" name="ssID" value="<%=session.getId()%>">
</td><tr><td align="right">
Password: </td><td colspan="2"> 
<input type="password" name="passwd" size="30" class="circular" />
</td></tr><tr>
  <td>

</td>
  <td><input type="button" value="Login" onClick="javascript:SaveData('login, userAuth.jsp');restorePrf('Logout');" class="circular"></td>
  <td><input type="reset" value="Reset" class="circular"></td> 
  <td> <a href="#" onClick="javascript:loadContent('Register,register.jsp')" class="circular"> Register</a></td>
 </tr>
</table>
</form>

<c:if test="${fn:length(param.username) > 0}" >

  <!--%@include file="register.jsp" %/-->
</c:if>

</body>
</html>