<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.*, java.util.Calendar" %>
<html>
  <title>My Page <%=request.getParameter( "ssID" )%> </title>
<head>

</head>
<body bgcolor="#FFFFFF" onload="javascript:restorePrf('logout')">
<%
   String name = request.getParameter( "username" );
   String pass = request.getParameter( "passwd" );
   String ssID = request.getParameter( "ssID" );
   session.setAttribute( "", ssID );
      // Get session creation time.
   Date createTime = new Date(session.getCreationTime());
   // Get last access time of this web page.
   Date lastAccessTime = new Date(session.getLastAccessedTime());

   String title = "Welcome Back to my website! <br> <img  src=\"dwt-dMug.GIF\"></a>";
   Integer visitCount = new Integer(0);
   String visitCountKey = new String("visitCount");
   String userIDKey = new String(name);
   String userID = new String(name);

   // Check if this is new comer on your web page.
  
   if (session.isNew()){
      title = "Welcome to my website";
      session.setAttribute(userIDKey, userID);
      session.setAttribute(visitCountKey,  visitCount);
   } 
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
    SELECT regid,username,name,email,age,passwd FROM register where username like '${param.username}' and passwd like '${param.passwd}'
  </sql:query>

</sql:transaction>
<c:forEach var="row" items="${getUser.rows}" varStatus="status">
<h1>Welcome <c:out value="${row.name}"/>! </h1>
 </c:forEach>
<hr>
<%-- Yet another dwtdbresource showing how to populate a table --%>
<table border="1" class="circular">
<tr class="circular">
<td  colspan="5" > <%
out.println("<br>Id:"+ session.getId());
out.println("<br>User Id:"+userID); 
out.println("<br>Time Created: "+ createTime);
out.println("<br>Last Access:"+lastAccessTime);

%>
Web hosting
Systems development and support
Application support
iBusiness development
We are here to server you
        </td>
</tr>
<tr class="circular">
   <th>Emp ID</th>
   <th>Full Name</th>
   <th>Email</th>
   <th>Age</th>
   <th>&nbsp;</th>
</tr>
  <c:forEach var="row" items="${getUser.rows}" varStatus="status">
    <%-- Get the column names for the header of the table --%>
 <tr>
   <td><a href="#" onClick="javascript:loadProfile('${row.regid},updateprof.jsp')" title ="Update Record" >
   <c:out value="${row.regid}"/> </a></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.email}"/></td>
   <td><c:out value="${row.age}"/></td>
   <td>*</td>
</tr>
  </c:forEach>
 
</table>
 <jsp:include page="profile/index.jsp" />
</body>
</html>
