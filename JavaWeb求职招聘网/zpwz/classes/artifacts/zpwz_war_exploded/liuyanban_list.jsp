
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
    
    <title>���԰�</title>
    <LINK href="CSS.css" type=text/css 
rel=stylesheet>

  </head>

<body >
  <p>�������԰��б�</p>


<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="4%" bgcolor="A4B6D7">���</td>
    <td width="12%" bgcolor='#A4B6D7'>�ǳ�</td><td width="4%" bgcolor='#A4B6D7'>�Ա�</td><td width="10%" bgcolor='#A4B6D7'>QQ</td><td width="11%" bgcolor='#A4B6D7'>����</td><td width="16%" bgcolor='#A4B6D7'>�绰</td>
    <td width="12%" bgcolor="A4B6D7">����</td>
    <td width="12%" bgcolor="A4B6D7">���ʱ��</td>
    
    <td width="11%" bgcolor="A4B6D7">�ظ�����</td>
    <td width="8%" bgcolor="A4B6D7">����</td>
  </tr>
  <%
  String sql="";
  sql="select * from liuyanban where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String cheng="";String xingbie="";String QQ="";String youxiang="";String dianhua="";String neirong="";String huifuneirong="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
cheng=RS_result.getString("cheng");xingbie=RS_result.getString("xingbie");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");neirong=RS_result.getString("neirong");huifuneirong=RS_result.getString("huifuneirong");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td><%=i %></td>
    <td><%=cheng %></td><td><%=xingbie %></td><td><%=QQ %></td><td><%=youxiang %></td><td><%=dianhua %></td>
    <td><%=neirong %></td>
    <td><%=addtime %></td>
    <td><%=huifuneirong %></td>
    <td>  <a href="del.jsp?id=<%=id %>&tablename=liuyanban" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="hf.jsp?id=<%=id%>">�ظ�</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
</body>
</html>

