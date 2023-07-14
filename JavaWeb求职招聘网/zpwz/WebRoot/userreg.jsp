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
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {color: #D92B8A}
body {
	background-color: #D62E85;
}
.STYLE2 {
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE8 {color: #185838;
	font-weight: bold;
}
-->
</style>
</head>
<script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
<script language="javascript">
function check()
{
	if(document.form1.yonghuming.value==""){alert("请输入用户名");document.form1.yonghuming.focus();return false;}
	if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}
	if(document.form1.mima2.value!=document.form1.mima.value){alert("两次密码不一致，请重试");document.form1.mima.focus();return false;}
	if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}
	
}

</script>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1002" height="1203" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1002" height="816" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" background="qtimages/3.jpg"><%@ include file="qtleft.jsp"%></td>
            <td valign="top" background="qtimages/2.jpg"><table id="__01" width="766" height="816" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td valign="top"><table id="__01" width="766" height="254" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="766" height="47" background="qtimages/1_02_02_01_01.jpg"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="13%" height="17" align="right" valign="bottom"><span class="STYLE2">用户注册</span></td>
                        <td width="87%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="197" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="11" background="qtimages/1_02_02_01_02_01.jpg">&nbsp;</td>
                          <td width="728" height="760" valign="top" bgcolor="#FFFFFF"><table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#FF3E75" style="border-collapse:collapse">
                            <form name="form1" method="post" action="yonghuzhuce_add_post.jsp">
                              <tr>
                                <td>用户名：</td>
                                <td><input name='yonghuming' type='text' id='yonghuming' value='' />
                                  &nbsp;*</td>
                              </tr>
                              <tr>
                                <td>密码：</td>
                                <td><input name='mima' type='password' id='mima' value='' />
                                  &nbsp;* 确认密码：
                                  <input name='mima2' type='password' id='mima2' value='' /></td>
                              </tr>
                              <tr>
                                <td>姓名：</td>
                                <td><input name='xingming' type='text' id='xingming' value='' />
                                  &nbsp;*</td>
                              </tr>
                              <tr>
                                <td>性别：</td>
                                <td><select name='xingbie' id='xingbie' style=" height:19px; border:solid 1px #000000; color:#666666">
                                    <option value="男">男</option>
                                    <option value="女">女</option>
                                </select></td>
                              </tr>
                              <tr>
                                <td>出生年月：</td>
                                <td><input name='chushengnianyue' type='text' id='chushengnianyue' value='' readonly='readonly' onClick="getDate(document.form1.chushengnianyue,'2')" need='1' /></td>
                              </tr>
                              <tr>
                                <td>QQ：</td>
                                <td><input name='QQ' type='text' id='QQ' value='' /></td>
                              </tr>
                              <tr>
                                <td>邮箱：</td>
                                <td><input name='youxiang' type='text' id='youxiang' value='' /></td>
                              </tr>
                              <tr>
                                <td>电话：</td>
                                <td><input name='dianhua' type='text' id='dianhua' value='' /></td>
                              </tr>
                              <tr>
                                <td>身份证：</td>
                                <td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' /></td>
                              </tr>
                              <tr>
                                <td>头像：</td>
                                <td><input name='touxiang' type='text' id='touxiang' size='50' value='' />
                                  &nbsp;
                                  <input name="button" type='button' onClick="up('touxiang')" value='上传' style=" height:19px; border:solid 1px #000000; color:#666666"/></td>
                              </tr>
                              <tr>
                                <td>地址：</td>
                                <td><input name='dizhi' type='text' id='dizhi' value='' size='50' /></td>
                              </tr>
                              <tr>
                                <td>备注：</td>
                                <td><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td><input type="submit" name="Submit5" value="提交" onClick="return check();" style=" height:19px; border:solid 1px #000000; color:#666666"/>
                                    <input type="reset" name="Submit22" value="重置" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                              </tr>
                            </form>
                          </table>                          <p align="center">&nbsp;</p>
                            </td>
                          <td width="27" background="qtimages/1_02_02_01_02_03.jpg">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03.jpg" width="766" height="10" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
</body>
</html>