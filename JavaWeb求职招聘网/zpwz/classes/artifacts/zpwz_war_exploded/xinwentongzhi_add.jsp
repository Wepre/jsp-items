
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
  String lb=new String(request.getParameter("lb").getBytes("8859_1"));
   %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����֪ͨ</title><LINK href="css.css" type=text/css rel=stylesheet>
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
  </head>
<script language="javascript">
function check()
{
	if(document.form1.biaoti.value==""){alert("���������");document.form1.biaoti.focus();return false;}if(document.form1.leibie.value==""){alert("���������");document.form1.leibie.focus();return false;}if(document.form1.tianjiaren.value==""){alert("�����������");document.form1.tianjiaren.focus();return false;}if(document.form1.dianjilv.value==""){alert("����������");document.form1.dianjilv.focus();return false;}
}
function gow()
{
	document.location.href="xinwentongzhi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="xinwentongzhi_add_post.jsp">
  ���<%=lb%>:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>���⣺</td><td><input name='biaoti' type='text' id='biaoti' value='' size='50' />&nbsp;*</td></tr><tr><td>���</td><td><input name='leibie' type='text' id='leibie' value='<%=lb%>' />&nbsp;*</td></tr><tr><td>���ݣ�</td><td><textarea name="neirong" style="display:none"></textarea><iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=neirong&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe></td></tr><tr><td>����ˣ�</td><td><input name='tianjiaren' type='text' id='tianjiaren' value='<%=request.getSession().getAttribute("username")%>' />&nbsp;*</td></tr><tr><td>��ҳͼƬ��</td><td><input name='shouyetupian' type='text' id='shouyetupian' size='50' value='' />&nbsp;<input type='button' value='�ϴ�' onClick="up('shouyetupian')"/></td></tr><tr><td>����ʣ�</td><td><input name='dianjilv' type='text' id='dianjilv' value='1' />&nbsp;*</td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

