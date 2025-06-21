<html>
<head>
<title>Dwere Enterprise Application</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script src="js/uploadfile.js" type="text/javascript"></script>
<script src="js/poll.js" type="text/javascript"></script>
<script src="js/dwtloader.js" type="text/javascript"></script>
<script src="js/loadxmldoc.js" type="text/javascript"> </script>
<script src="js/dwtcontent.js" type="text/javascript"> </script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK REL="SHORTCUT ICON" HREF="images/dwt-logo.ico">
<link href="css/dwt.css" rel="stylesheet" type="text/css" />

<body  onload="javascript:restorePrf('Login')">

<!-- %@ include file="header.jsp"%//-->
<jsp:include page="header.jsp" /> 
<table  class="circularCtr" width="88%" border="0"  align="center" cellpadding="5" cellspacing="4">

<tr height="10">
<td width="39%" rowspan="2" valign="top">
  
<%--@include file="iday.jsp" /--%>
  
  <div  class="circular" id="ShowDealsToday" style="background-color:FC0; margin:auto; color:F00">
  Daily Deals!</div><br><hr>
 <div id="DisplayStage" align="left" style="border-color:#0033FF" class="circular"  ><a href="http://www.thumbtack.com/dwere-tech-research-La-Mesa-CA/service/896034" target="_new">Client Services Center</a></div>
  </td>
<td width="61%" height="378" valign="top">
 
  <div id="MyPage" class="circular" >
  <br><center> BUSINESS LISTING</center>
   <hr>
  Need a web site =&gt; <a href="#" onClick="javascript:alert('Show Seesion Details \r' + '<%=session.getId()%>')">[Click here]</a>.
    <a href="#" onClick="javascript:loadContent('Register,register.jsp')"></a>  
    <a href="#" onClick="javascript:loadContent('Login,login.jsp')">
    <hr>
  </a>
   
</td>
</tr>
<tr>
  <td><div id='ajaxDiv'>Other Links:<a href="http://www.addthis.com/bookmark.php?v=20" onMouseOver="return addthis_open(this, '', '[URL]', '[TITLE]')" onMouseOut="addthis_close()" onClick="return addthis_sendto()"><img src="http://s7.addthis.com/static/btn/lg-share-en.gif" alt="Bookmark and Share" style="border: 0pt none;" height="16" width="125"></a> |</div>
    Your Services, Our committment to serve!</td>
  </tr>
</table>
</body>
</html>
