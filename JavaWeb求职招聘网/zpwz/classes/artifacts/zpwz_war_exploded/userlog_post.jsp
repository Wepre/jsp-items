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
  String rand = (String)session.getAttribute("rand"); 
String input = request.getParameter("rand"); 
if(rand.equals(input)){ 

 String uid=new String(request.getParameter("username").getBytes("8859_1"));
 String pwd=new String(request.getParameter("pwd1").getBytes("8859_1"));

 String sql="";
 String cx=new String(request.getParameter("cx").getBytes("8859_1"));
 if(cx.equals("ѧ��"))
 {
 	sql="select * from yonghuzhuce where yonghuming='"+uid+"' and mima='"+pwd+"' and issh='��'";
 }
 else
 {
 	sql="select * from gongsixinxi where gongsibianhao='"+uid+"' and mima='"+pwd+"' and issh='��'";
 }
 ResultSet RS_result=connDbBean.executeQuery(sql);
 if(!RS_result.next())
{
	out.print("<script>alert('��������û������ڻ�������󣬻��ʺ�δ�����,�����µ�¼!');window.history.go(-1);</script>");
	}
else{
	
  	  session.setAttribute("username",uid);
  	   if(cx.equals("ѧ��"))
 {
 	session.setAttribute("xm",RS_result.getString("xingming"));
	session.setAttribute("uid",RS_result.getString("id"));
 }
 else
 {
 	session.setAttribute("xm",RS_result.getString("gongsimingcheng"));
 }
	  session.setAttribute("cx",cx);
	   response.sendRedirect("index.jsp");	
	 }
RS_result.close();
} else{ 
out.print("<script>alert('��������ȷ����֤�룡');location.href='index.jsp';</script>"); 
} 
 %>
  </body>
</html>

