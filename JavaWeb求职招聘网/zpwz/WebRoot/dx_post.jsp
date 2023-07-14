<%@ page language="java"  pageEncoding="gb2312" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
  </head>
  <body>
  <%
String neirong=request.getParameter("content");
String lb=new String(request.getParameter("lb").getBytes("8859_1"));
String sql="update dx set content='"+neirong+"' where leibie= '"+lb+"'";
connDbBean.executeUpdate(sql);
out.print("<script>alert('±à¼­³É¹¦!!');history.back();</script>");
%>
  </body>
</html>


