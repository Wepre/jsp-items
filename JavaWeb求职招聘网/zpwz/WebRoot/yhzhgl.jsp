<%
if (request.getSession().getAttribute("cx").equals("��������Ա"))
{
	
}
else
{
	out.print("<script>alert('�Բ���,��û�����Ȩ��!!');history.back();</script>");
}
 %>
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
    
    <title>�޸�����</title>
    

  </head>
<script language="javascript">
function check()
{
	if(document.form1.username.value=="")
	{
		alert("�������û���");
		document.form1.username.focus();
		return false;
	}
	if(document.form1.pwd1.value=="")
	{
		alert("����������");
		document.form1.pwd1.focus();
		return false;
	}
	if(document.form1.pwd2.value=="")
	{
		alert("������ȷ������");
		document.form1.pwd2.focus();
		return false;
	}
	if(document.form1.pwd2.value!=document.form1.pwd1.value)
	{
		alert("�������벻һ��,��ȷ��");
		document.form1.pwd1.value="";
		document.form1.pwd2.value="";
		document.form1.pwd1.focus();
		return false;
	}
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="yhzhgl_post.jsp">
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr>
      <td>�û�����</td>
      <td><input name="username" type="text" id="username" />
      *</td>
    </tr>
    <tr>
      <td>���룺</td>
      <td><input name="pwd1" type="password" id="pwd1" />
      *</td>
    </tr>
    <tr>
      <td>ȷ�����룺</td>
      <td><input name="pwd2" type="password" id="pwd2" />
      *</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>
<p>���й���Ա�б�</p>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td bgcolor="A4B6D7">���</td>
    <td bgcolor="A4B6D7">�û���</td>
    <td bgcolor="A4B6D7">����</td>
    <td bgcolor="A4B6D7">Ȩ��</td>
    <td bgcolor="A4B6D7">���ʱ��</td>
    <td bgcolor="A4B6D7">����</td>
  </tr>
  <%
 ResultSet RS_result=connDbBean.executeQuery("select * from allusers order by id desc" );
 String id="";
 String username="";
 String pwd="";
 String cx="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
 username=RS_result.getString("username");
 pwd=RS_result.getString("pwd");
 cx=RS_result.getString("cx");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td><%=i %></td>
    <td><%=username %></td>
    <td><%=pwd %></td>
    <td><%=cx %></td>
    <td><%=addtime %></td>
    <td><a href="del.jsp?id=<%=id %>&tablename=allusers" onclick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table>
  </body>
</html>

