<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
    

  </head>
  
  <body>
  <%
 

String username=request.getParameter("username");
 String pwd=request.getParameter("pwd1");
 ResultSet RS_result=connDbBean.executeQuery("select * from allusers where username='"+username+"'");

 if(RS_result.next())
{
out.print("<script>alert('���û����Ѿ�����,�뻻�����û���!');window.history.go(-1);</script>");
	}
else{

	
  	  	String sql="insert into allusers(username,pwd) values('"+username+"','"+pwd+"')";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('��ӳɹ�!!');location.href='yhzhgl.jsp';</script>");
  	  
	}
RS_result.close();

 %>
  </body>
</html>

