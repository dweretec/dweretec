<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>
<html>
<head>

<link href="/css/dwt.css" rel="stylesheet" type="text/css">
</head>
<script src="js/dwtcontent.js" type="text/javascript"> </script>
<body bgcolor="CFECEC" onload="javascript:restorePrf('Logout')" >

<form method="post" name="frmRegister" id="frmRegId">
<input type="hidden" name="submitted" value="true"/>

<p align="left"><b> Register <hr> </p>
<p align="center"><b>Please complete the following registration form</b> <hr><br><br>
<table  class="circular" BORDER="0" ALIGN="CENTER" VALIGN="TOP" CELLPADDING=2 CELLSPACING=0>
<tr>
<td width="167" align="right"><Strong>Fullname:</strong></td>
<td width="212"><input type="text" name="name" id="name" value="<c:out value="${param.name}" />" class="circular"/></td>
</tr>
<tr>
<td width="167" align="right"><Strong>Email address:</strong></td>
<td width="212"><input type="text" name="email"  id="email" value="<c:out value="${param.email}" />" class="circular"/></td>
</tr>
<tr>
<td width="167" align="right"><Strong>Age:</strong></td>
<td width="212"><input type="text" name="age"  id="age" value="<c:out value="${param.age}" />" class="circular"/></td>
</tr>
<tr>
<td align="right"><Strong>Password:</strong></td>
<td> <input type="password" name="pw" id="pw" value="<c:out value="${param.pw}"/>" class="circular" /> </td>
<tr>
<td align="right"><Strong>Confirm password:</strong></td>
<td> <input type="password" name="cpw" id="cpw" value="<c:out value="${param.cpw}" />" class="circular" /></td>

<tr>
<td></td>
<td>
<input type="button" value="Register" class="circular" onClick="javascript:RegisterUser('postregister.jsp, postregister.jsp')" align="right"/>
</td> 
<td>
<input type="button" value="Clear" class="circular" onClick="javascript:ClearForm()" align="left" />
</td>
</tr>
</table>
</form>
</body>

</html>
