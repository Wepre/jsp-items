
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
    
    <title>��������</title>
    <LINK href="qtimages/CSS.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <p>�������������б�</p>
  <form name="form1" id="form1" method="post" action="youqinglianjie_list.jsp">
   ����:��ַ:
  <input name="bianhao" type="text" id="bianhao" />
 
  <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="7%" bgcolor="A4B6D7">���</td>
    <td width="32%" bgcolor='#A4B6D7'>��վ����</td>
    <td width="30%" bgcolor='#A4B6D7'>��ַ</td>
    <td width="21%" bgcolor="A4B6D7">���ʱ��</td>
    
    <td width="10%" bgcolor="A4B6D7">����</td>
  </tr>
  <%
  String sql="";
  sql="select * from youqinglianjie where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and wangzhi like '%"+request.getParameter("bianhao")+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String wangzhanmingcheng="";String wangzhi="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
wangzhanmingcheng=RS_result.getString("wangzhanmingcheng");wangzhi=RS_result.getString("wangzhi");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td><%=i %></td>
    <td><%=wangzhanmingcheng %></td><td><%=wangzhi %></td>
    <td><%=addtime %></td>
    <td><a href="youqinglianjie_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=youqinglianjie" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
  </body>
</html>

