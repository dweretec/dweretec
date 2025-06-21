
<form name="frmEdit" id="nusr" >
  <table  border="0" cellpadding="0" cellspacing="0" class="style4">
    <tr>
    <td class="style1"><div align="right"  >full name:</div></td>
    <td colspan="2"><input name="fullname" type="text" id="fullname"  size="30" tabindex="5" ></td>
  </tr>
      <tr>
    <td class="style1"><div align="right">
    <a href="#" onclick="document.frmEdit.role.disabled=false;">role:</a></div></td>
    <td colspan="2"><input name="role" type="text" id="role"  title="admin use only"  size="30"  value="2222"  disabled="disabled" /></td>
  </tr>
  <tr>
    <td width="62" class="style1"><div align="right">email:</div></td>
    <td colspan="2">
<input name="email" type="text" id="email"   size="30" tabindex="6" >
<!-- input name="check" type="button"  onclick="checkName(this.value,'')" value="Check" -->
</td>
  </tr>
  
  <tr> 
    <td class="style1"><div align="right" class="hidden" >password:</div></td>
    <td colspan="2"><input name="passcode" type="password" id="passcode"   size="30" tabindex="7" ></td> 
  </tr>
  <tr>
    <td class="style1"><div align="right">zipcode:</div></td>
    <td colspan="2"><input name="zipcode" type="text" id="zipcode"   size="30" tabindex="8" ></td>
  </tr>

  <tr>
    <td colspan="3"  align="center"><span class="hidden" id="nameCheckFailed">

    </span>&nbsp;</td>
    </tr>
  <tr>
    <td align="center"><span class="style1"><a href="#" title="To save and create account" onclick="checkName();document.frmEdit.role.disabled=true;" tabindex="9">OK</a></span></td>
    <td width="55" class="style1"> <div id="saved"  style="visibility:hidden"><font color="#009900"> Saved</font></div></td>
    <td width="175" class="style1">
<a href="#"  id="ulogin" onclick="document.ReqForm.uname.value=document.frmEdit.email.value;
getMyProfile('MyLogin',document.frmEdit.email.value,document.frmEdit.passcode.value);" 
    tabindex="10" title="Login will switch screen to this user">Login</a>
    
   
    
    </td>
  </tr>
  <tr>
    <td colspan="3"> 
      <div id="LoginNow" > </div> </td></tr>
</table>
  
</form>