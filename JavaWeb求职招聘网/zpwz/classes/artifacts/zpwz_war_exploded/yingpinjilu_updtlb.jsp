
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
    
    <title>ӦƸ��¼</title><script language="javascript" src="js/Calendar.js"></script>
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
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.gongsibianhao.value==""){alert("�����빫˾���");document.form1.gongsibianhao.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("�����빫˾����");document.form1.gongsimingcheng.focus();return false;}if(document.form1.gangweimingcheng.value==""){alert("�������λ����");document.form1.gangweimingcheng.focus();return false;}if(document.form1.xinzidaiyu.value==""){alert("������н�ʴ���");document.form1.xinzidaiyu.focus();return false;}if(document.form1.yingpinren.value==""){alert("������ӦƸ��");document.form1.yingpinren.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="yingpinjilu_updt_postlb.jsp?id=<%=id %>">
  ����ӦƸ��¼:
  <br><br>
  <%
  String sql="select * from yingpinjilu where id="+id;
  String gongsibianhao="";String gongsimingcheng="";String gangweimingcheng="";String xinzidaiyu="";String yingpinren="";String gongsihuifu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");gangweimingcheng=RS_result.getString("gangweimingcheng");xinzidaiyu=RS_result.getString("xinzidaiyu");yingpinren=RS_result.getString("yingpinren");gongsihuifu=RS_result.getString("gongsihuifu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr style='display:none'><td>��˾��ţ�</td><td><input name='gongsibianhao' type='text' id='gongsibianhao' value='<%= gongsibianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr style='display:none'><td>��˾���ƣ�</td><td><input name='gongsimingcheng' type='text' id='gongsimingcheng' size='50' value='<%=gongsimingcheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr style='display:none'><td>��λ���ƣ�</td><td><input name='gangweimingcheng' type='text' id='gangweimingcheng' size='50' value='<%=gangweimingcheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr style='display:none'><td>н�ʴ�����</td><td><input name='xinzidaiyu' type='text' id='xinzidaiyu' value='<%= xinzidaiyu%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr style='display:none'><td>ӦƸ�ˣ�</td><td><input name='yingpinren' type='text' id='yingpinren' value='<%= yingpinren%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��˾�ظ���</td><td><textarea name='gongsihuifu' cols='50' rows='5' id='gongsihuifu' style='border:solid 1px #000000; color:#666666'><%=gongsihuifu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


