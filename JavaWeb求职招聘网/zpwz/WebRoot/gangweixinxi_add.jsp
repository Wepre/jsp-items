
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
    
    <title>��λ��Ϣ</title><LINK href="css.css" type=text/css rel=stylesheet>
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
	if(document.form1.gongsibianhao.value==""){alert("�����빫˾���");document.form1.gongsibianhao.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("�����빫˾����");document.form1.gongsimingcheng.focus();return false;}if(document.form1.gangweimingcheng.value==""){alert("�������λ����");document.form1.gangweimingcheng.focus();return false;}if(document.form1.zhaopinrenshu.value==""){alert("��������Ƹ����");document.form1.zhaopinrenshu.focus();return false;}if(document.form1.xingbieyaoqiu.value==""){alert("�������Ա�Ҫ��");document.form1.xingbieyaoqiu.focus();return false;}
}
function gow()
{
	document.location.href="gangweixinxi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
    <%
  String sql;
  ResultSet RS_result;
 //islbdq String id=request.getParameter("id");
 //islbdq sql="select * from melieibaoduqubiaoiguo where id="+id;
 //islbdq gogogogogo
 //islbdq RS_result=connDbBean.executeQuery(sql);
 //islbdq while(RS_result.next()){
 //islbdq lelelelelele
 //islbdq }
   %>
  <form name="form1" id="form1" method="post" action="gangweixinxi_add_post.jsp">
  ��Ӹ�λ��Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>��˾��ţ�</td><td><input name='gongsibianhao' type='text' id='gongsibianhao' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' />&nbsp;*</td></tr><tr><td>��˾���ƣ�</td><td><input name='gongsimingcheng' type='text' id='gongsimingcheng' value='<%=request.getSession().getAttribute("xm")%>' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>��λ���ƣ�</td><td><input name='gangweimingcheng' type='text' id='gangweimingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>��Ƹ������</td><td><input name='zhaopinrenshu' type='text' id='zhaopinrenshu' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>�Ա�Ҫ��</td><td><select name='xingbieyaoqiu' id='xingbieyaoqiu'>
     <option value="����">����</option>
     <option value="��">��</option>
     <option value="Ů">Ů</option>
   </select>&nbsp;*</td></tr><tr><td>ѧ��Ҫ��</td><td><select name='xueliyaoqiu' id='xueliyaoqiu'>
     <option value="˶ʿ">˶ʿ</option>
     <option value="����">����</option>
     <option value="��ר">��ר</option>
     <option value="����">����</option>
   </select></td></tr><tr><td>н�ʴ�����</td><td><input name='xinzidaiyu' type='text' id='xinzidaiyu' value='' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��飺</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

