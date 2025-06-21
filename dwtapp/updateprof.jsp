<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.*, java.util.Calendar" %>
<html>
  <title>My Page <%=request.getParameter( "ssID" )%> </title>
<head>
</head>
<script src="js/dwtcontent.js" type="text/javascript"> </script>
<body bgcolor="#FFFFFF" onload="javascript:restorePrf()">
<%
   String rgid = request.getParameter( "id" );
  
%>

<sql:setDataSource
  var="dwtdbresource"
  driver="oracle.jdbc.driver.OracleDriver"
  url="jdbc:oracle:thin:@localhost:1521:dwtdb19c"
  user="www"
  password="dwere4u"
/>


<sql:transaction dataSource="${dwtdbresource}">
  
  <sql:query var="getUser">
    SELECT regid,username,name,email,age,passwd,cpasswd FROM register where regid = '${param.id}'  
  </sql:query>

</sql:transaction>
<c:forEach var="row" items="${getUser.rows}" varStatus="status">
<h1>Welcome <c:out value="${row.name}"/>! </h1>

<hr>


<form method="post" name="frmUpdateUser" id="frmUpdtId">
<input type="hidden" name="submitted" value="true"/>

<p align="left"><b> Update Record <c:out value="${row.regid}"/><hr> </p>
<p align="center"><b>Please complete the following registration form</b> <hr><br><br>
<table  class="circular" BORDER="0" ALIGN="CENTER" VALIGN="TOP" CELLPADDING=2 CELLSPACING=0>
<tr>
<td width="167" align="right"><Strong>Fullname:</strong></td>
<td width="212"><input type="text" name="name" id="name"  value="<c:out value="${row.name}" />" class="circular"/></td>
</tr>
<tr>
<td width="167" align="right"><Strong>Email address:</strong></td>
<td width="212"><input type="text" name="email"  id="email" value="<c:out value="${row.email}" />" class="circular"/></td>
</tr>
<tr>
<td width="167" align="right"><Strong>Age:</strong></td>
<td width="212"><input type="text" name="age"  id="age" value="<c:out value='${row.age}' />" class="circular"/></td>
<tr>
<td align="right"><Strong>Password:</strong></td>
<td> <input type="password" name="pw" id="pw" value="<c:out value='${row.passwd}' />" class="circular" /> </td>
<tr>
<td align="right"><Strong>Confirm password:</strong></td>
<td> <input type="password" name="cpw" id="cpw" value="<c:out value='${row.cpasswd}' />" class="circular" /></td>

<tr>
<td></td>
<td>
<input type="button" value="Update" class="circular" onClick="javascript:updateUser('${row.regid}, updateRecord.jsp')" align="right"/>

</td> 
<td>
<input type="button" value="Clear" class="circular" onClick="javascript:ClearForm()" align="left" />
</td>
</tr>
</table>
</form>
 </c:forEach>

</body>
</html>
