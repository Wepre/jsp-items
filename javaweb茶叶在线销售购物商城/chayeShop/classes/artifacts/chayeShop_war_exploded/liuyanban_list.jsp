<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>���԰�</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<body >
  <p>�������԰��б�</p>


<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="4%" bgcolor="A4B6D7">���</td>
    <td width="12%" bgcolor='#A4B6D7'>�ǳ�</td><td width="4%" bgcolor='#A4B6D7'>ͷ��</td><td width="10%" bgcolor='#A4B6D7'>QQ</td><td width="11%" bgcolor='#A4B6D7'>����</td><td width="16%" bgcolor='#A4B6D7'>�绰</td>
    <td width="12%" bgcolor="A4B6D7">����</td>
    <td width="12%" bgcolor="A4B6D7">���ʱ��</td>
    
    <td width="11%" bgcolor="A4B6D7">�ظ�����</td>
    <td width="8%" bgcolor="A4B6D7">����</td>
  </tr>
  <% 
   new CommDAO().delete(request,"liuyanban"); 
    String url = "liuyanban_list.jsp?1=1"; 
    String sql =  "select * from liuyanban where 1=1 ";
    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,10,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
  <tr>
    <td><%=i %></td>
    <td><%=map.get("cheng") %></td><td><%= map.get("xingbie") %></td><td><%= map.get("QQ") %></td><td><%= map.get("youxiang") %></td><td><%= map.get("dianhua") %></td>
    <td><%= map.get("neirong") %></td>
    <td><%= map.get("addtime") %></td>
    <td><%= map.get("huifuneirong") %></td>
    <td>  <a href="liuyanban_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="hf.jsp?id=<%=map.get("id")%>">�ظ�</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:pointer" onClick="javascript:window.print();">��ӡ��ҳ</a>
</body>
</html>

