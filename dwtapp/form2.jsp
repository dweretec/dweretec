<%
String name = request.getParameter("name");
String email = request.getParameter("mail");

if((name!=null) && (email!=null) ) 
	{
	 session.setAttribute("theName", name);
	 session.setAttribute("theemail", email);
    }
%>
<html>
<script src="js/dwtcontent.js" type="text/javascript"> </script>
  <body bgcolor="#FFEAF4">
    <center>
    Full Name: <%=name%> |Email: <%=email%> |<a href="#" onClick="javascript:alert('SS ' + '<%=session.getAttribute("theName")%>')">Status</a>
    <hr>
      <form id="frmAddr">
    <table border="1" cellpadding="0" cellspacing="0" decolor=""#E2FEFD height="30%" width="50%">
        <tr bgcolor="#FBFBFB">
        <td>
        <B>Address1:</B>
        <input type="text" name="Address1" size="35" />
        </td>
        </tr>

        <tr bgcolor="#FBFBFB">
        <td><B>Address2:</B>
        <input type="text" name="Address2"  size="35" /></td>
        </tr>

        <tr bgcolor="#FBFBFB">
        <td align="center"><B>City:</B>
           <input name="city" type="text" size="30" /> 
          State:
          <input name="state" type="text" id="state" value="" size="2">
Zip:
<input name="zipcode" type="text" id="zipcode" value="" size="9" /></td>
        </tr>

        <tr bgcolor="#FBFBFB">
        <td><a href="javascript:GetAddr('Register,description.jsp')">Next</a></td>
        </tr>
        
    </table>
     </form>
   </center>
  </body>
</html>