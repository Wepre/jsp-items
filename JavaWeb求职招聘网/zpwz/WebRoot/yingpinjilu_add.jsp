
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ӦƸ��¼</title><LINK href="css.css" type=text/css rel=stylesheet>
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
	if(document.form1.gongsibianhao.value==""){alert("�����빫˾���");document.form1.gongsibianhao.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("�����빫˾����");document.form1.gongsimingcheng.focus();return false;}if(document.form1.gangweimingcheng.value==""){alert("�������λ����");document.form1.gangweimingcheng.focus();return false;}if(document.form1.xinzidaiyu.value==""){alert("������н�ʴ���");document.form1.xinzidaiyu.focus();return false;}if(document.form1.yingpinren.value==""){alert("������ӦƸ��");document.form1.yingpinren.focus();return false;}
}
function gow()
{
	document.location.href="yingpinjilu_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
    <%
  String sql;
  ResultSet RS_result;
  String id=request.getParameter("id");
  sql="select * from gangweixinxi where id="+id;
  String gongsibianhao="";String gongsimingcheng="";String gangweimingcheng="";String xinzidaiyu="";
  RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");gangweimingcheng=RS_result.getString("gangweimingcheng");xinzidaiyu=RS_result.getString("xinzidaiyu");
  }
   %>
  <form name="form1" id="form1" method="post" action="yingpinjilu_add_post.jsp">
  ���ӦƸ��¼:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>��˾��ţ�</td><td><input name='gongsibianhao' type='text' id='gongsibianhao' value='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.gongsibianhao.value='<%=gongsibianhao%>';</script><tr><td>��˾���ƣ�</td><td><input name='gongsimingcheng' type='text' id='gongsimingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.gongsimingcheng.value='<%=gongsimingcheng%>';</script><tr><td>��λ���ƣ�</td><td><input name='gangweimingcheng' type='text' id='gangweimingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.gangweimingcheng.value='<%=gangweimingcheng%>';</script><tr><td>н�ʴ�����</td><td><input name='xinzidaiyu' type='text' id='xinzidaiyu' value='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.xinzidaiyu.value='<%=xinzidaiyu%>';</script><tr><td>ӦƸ�ˣ�</td><td><input name='yingpinren' type='text' id='yingpinren' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' />&nbsp;*</td></tr><tr style='display:none'><td>��˾�ظ���</td><td><textarea name='gongsihuifu' cols='50' rows='5' id='gongsihuifu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

