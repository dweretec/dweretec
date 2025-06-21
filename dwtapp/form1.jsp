<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="js/dwtcontent.js" type="text/javascript"> </script>
</head>

     <body bgcolor="#FFEAF4">
        <center>
        <form  id="frmDemo" >
           <table border="1" cellpadding="0" cellspacing ="0" height="30%" width="55%">
               <tr bgcolor="#FBFBFB">
                   <td width="25%" align="right">Full name:</td>
                   <td colspan="2">
                     <input type="text"  name="name" value="" size="35" />
                 <td width="4%">
             </tr>
                <tr bgcolor="#FBFBFB">
                   <td align="right">Email: </td><td colspan="2"><input type="text"  name="mail" value="" size="35" /></td>
                </tr>
                <tr bgcolor="#FBFBFB">
                   <td>&nbsp;</td><td width="20%"><input type="button" value="NEXT"  onclick="javascript:DemoReg('Register,form2.jsp')"/></td>
                   <td width="51%"><input type="reset" value="Reset" /></td>
                </tr>
           </table>
        </form>
        </center>
    </body>
</html>