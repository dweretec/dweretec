<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>

<head>
  <title>JSTL: SQL in action </title>
</head>
<body bgcolor="#FFFFFF" onload="javascript:restorePrf('Logout')">
<%
   String u_rgid = request.getParameter( "id" );
   String u_name = request.getParameter( "name" );
   String u_email = request.getParameter( "email" );
   String u_age = request.getParameter( "age" );
   String u_passwd = request.getParameter( "passwd" );
  
%>



<sql:setDataSource
  var="dwtdbresource"
  driver="oracle.jdbc.driver.OracleDriver"
  url="jdbc:oracle:thin:@192.168.1.11:1521:amrdb1"
  user="www"
  password="dwere4u"
/>

<sql:transaction dataSource="${dwtdbresource}">
  <sql:query var="getUser">
    SELECT regid,username,name,email,age,passwd,cpasswd FROM register where regid = '${param.id}'  
  </sql:query>

</sql:transaction>

 <sql:update var="updateRecord" dataSource="${dwtdbresource}">
    UPDATE register SET username=? <sql:param value="${param.email}"/> WHERE regid=${param.id}
  </sql:update>
  <sql:update var="updateRecord" dataSource="${dwtdbresource}">
    UPDATE register SET name=? <sql:param value="${param.name}"/>  WHERE regid=${param.id}
  </sql:update>
  <sql:update var="updateRecord" dataSource="${dwtdbresource}">
    UPDATE register SET email=? <sql:param value="${param.email}"/> WHERE regid=${param.id}
  </sql:update>
  <sql:update var="updateRecord" dataSource="${dwtdbresource}">
    UPDATE register SET age=? <sql:param value="${param.age}"/> WHERE regid=${param.id}
  </sql:update>
  <sql:update var="updateRecord" dataSource="${dwtdbresource}">
    UPDATE register SET passwd=? <sql:param value="${param.passwd}"/> WHERE regid=${param.id}          
  </sql:update>

<%-- The Value for sql:param can be obtained from the JSP parameters --%>
 
 <sql:transaction dataSource="${dwtdbresource}">
  <sql:query var="getUser">
    SELECT regid,username,name,email,age,passwd,cpasswd FROM register where regid = '${param.id}'  
  </sql:query>
</sql:transaction>

<c:forEach var="row" items="${getUser.rows}" varStatus="status">
<h1>Welcome <c:out value="${row.name}"/>! </h1>
 </c:forEach>
<hr>
<%-- Yet another dwtdbresource showing how to populate a table --%>
<table border="1" class="circular">
<tr class="circular">
<td  colspan="5" > 
<br/> Web hosting
<br/>Systems development and support
<br/>Application support
<br/>Business development
<br/>We are here to server you
</td>
</tr>
<tr>
   <th>Emp ID</th>
   <th>Full Name</th>
   <th>Email</th>
   <th>Age</th>
   <th>&nbsp;</th>
</tr>
  <c:forEach var="row" items="${getUser.rows}" varStatus="status">
    <%-- Get the column names for the header of the table --%>
 <tr>
   <td><a href="#" onClick="javascript:loadProfile('${row.regid},updateprof.jsp')" title ="Update Record" ><c:out value="${row.regid}"/> </a></td>
   <td><c:out value="${row.name}"/>
   </td>
   <td><c:out value="${row.email}"/></td>
   <td><c:out value="${row.age}"/></td>
   <td>*</td>
</tr>
  </c:forEach>
 
</table>
</body>
</html>