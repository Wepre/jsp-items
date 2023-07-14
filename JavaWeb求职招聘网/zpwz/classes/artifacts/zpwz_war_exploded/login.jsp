<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
<head>
    
<title>招聘网</title>
<style type="text/css">
<!--
*{overflow:hidden; font-size:9pt;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-repeat: repeat-x;
	background-color: #F6EED7;
}
.STYLE6 {color: #FFFFFF}
.STYLE5 {color: #CCFFCC;
	font-size: 26pt;
}
.STYLE7 {color: #FFFFFF}
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script language="javascript">
function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.rand.value=="")
	{
		alert('请输入完整');
		return false;
	}
}
function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="905" height="758" border="0" align="center" cellpadding="0" cellspacing="0" background="images/login.gif" id="__01">
  <tr>
    <td height="316" colspan="3" background="images/middleh40edbhf_01.png"><table width="64%" height="56" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="56"><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
            <div align="center" class="STYLE5">招聘网后台管理</div>
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="314" rowspan="2">&nbsp;</td>
    <td width="352" height="152" background="images/middleh40edbhf_03.png"><table width="239" border="0" align="center" cellpadding="0" cellspacing="0">
      <form name="form1" method="post" action="adminyanzheng.jsp">
        <tr>
          <td width="44" height="30"><span class="STYLE7">用户:</span></td>
          <td width="142" height="30"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
        </tr>
        <tr>
          <td height="30"><span class="STYLE7">密码:</span></td>
          <td height="30"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
        </tr>
        <tr style="display:none">
          <td height="30"><span class="STYLE7">权限:</span></td>
          <td height="30"><select name="cx" id="cx">
            <option value="管理员">管理员</option>
            
          </select>
                <input name="login" type="hidden" id="login" value="1"></td>
        </tr>
		 <tr>
          <td height="30"><span class="STYLE7">验证码:</span></td>
          <td height="30"><input type="text" name="rand" id="rand" size="5">
            <a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"></a>
		 </tr>
        <tr>
          <td height="30" colspan="2"><input type="submit" name="Submit" value="登陆" onClick="return check();">
                <input type="reset" name="Submit2" value="重置"></td>
        </tr>
      </form>
    </table></td>
    <td width="336" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>

