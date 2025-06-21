<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<body>
<sql:setDataSource
var = "db"
driver = "oracle.jdbc.driver.OracleDriver"
url = "jdbc:oracle:thin:@192.168.1.11:1522:amrdb"
user = "www"
password = "dwere4u"/>

<sql:query var="allBooks" dataSource="${db}">
select * from register
</sql:query> 
</body>
</html>
