<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>��˾��Ϣ</title>
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
            pop.setContent("title","�ļ��ϴ�");
            pop.build();
            pop.show();
	    }
	</script>
	<script language="javascript">
function check()
{
	if(document.form1.gongsibianhao.value==""){alert("�����빫˾���");document.form1.gongsibianhao.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("�����빫˾����");document.form1.gongsimingcheng.focus();return false;}if(document.form1.dianhua.value==""){alert("������绰");document.form1.dianhua.focus();return false;}if(document.form1.dizhi.value==""){alert("�������ַ");document.form1.dizhi.focus();return false;}if(document.form1.mima.value==""){alert("����������");document.form1.mima.focus();return false;}if(document.form1.youxiang.value==""){alert("����������");document.form1.youxiang.focus();return false;}if(document.form1.gongsibianhao.value==""){alert("�����빫˾���");document.form1.gongsibianhao.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("�����빫˾����");document.form1.gongsimingcheng.focus();return false;}if(document.form1.dianhua.value==""){alert("������绰");document.form1.dianhua.focus();return false;}if(document.form1.dizhi.value==""){alert("�������ַ");document.form1.dizhi.focus();return false;}if(document.form1.mima.value==""){alert("����������");document.form1.mima.focus();return false;}if(document.form1.youxiang.value==""){alert("����������");document.form1.youxiang.focus();return false;}
}
function gow()
{
	document.location.href="gongsixinxi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
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
                        <td width="13%" height="17" align="right" valign="bottom"><span class="STYLE2">��˾ע��</span></td>
                        <td width="87%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="197" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="11" background="qtimages/1_02_02_01_02_01.jpg">&nbsp;</td>
                          <td width="728" height="760" valign="top" bgcolor="#FFFFFF">
						  
						  
						   <%
  String sql;
  ResultSet RS_result;

   %>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"><form name="form1" id="form1" method="post" action="gongsixinxiadd_post.jsp">
       <tr><td>��˾��ţ�</td><td><input name='gongsibianhao' type='text' id='gongsibianhao' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>��˾���ƣ�</td><td><input name='gongsimingcheng' type='text' id='gongsimingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>�����ˣ�</td><td><input name='fuzeren' type='text' id='fuzeren' value='' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>���</td><td><select name='leibie' id='leibie'>
         <option value="IT��">IT��</option>
         <option value="��ʳ��">��ʳ��</option>
         <option value="������">������</option>
         <option value="������">������</option>
       </select></td></tr><tr><td>ע���ʽ�</td><td><input name='zhucezijin' type='text' id='zhucezijin' value='' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��˾��ģ��</td><td><input name='gongsiguimo' type='text' id='gongsiguimo' value='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>���䣺</td><td><input name='youxiang' type='text' id='youxiang' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>��飺</td><td><textarea name="jianjie" style="display:none"></textarea><iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=jianjie&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe></td></tr>
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</form>
  </table>
  
						  
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
