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
if(!rand.equals(input)){
 String uid=request.getParameter("username");
 String pwd=request.getParameter("pwd");
// String cx=new String(request.getParameter("cx").getBytes("8859_1"));
 String cx="����Ա��";
 String sql="";
 if(cx.equals("Ա��"))
 {
 	sql="select * from [yuangongxinxi] where yonghuming='"+uid+"' and mima='"+pwd+"'";
 }
 else
 {
 	sql="select * from [allusers] where username='"+uid+"' and pwd='"+pwd+"'";
 }
 ResultSet RS_result=connDbBean.executeQuery(sql);
 if(!RS_result.next())
{
	out.print("<script>alert('��������û������ڻ��������,�����µ�¼!');window.history.go(-1);</script>");
	}
else{
	
  	  session.setAttribute("username",uid);
	if(cx.equals("Ա��"))
 	{
  	  session.setAttribute("cx","Ա��");
  	  }
	  else
	  {
	  	session.setAttribute("cx",RS_result.getString("cx"));
	  }
	 response.sendRedirect("main.jsp");	 
	} 
RS_result.close();
} else{ 
out.print("<script>alert('��������ȷ����֤�룡');location.href='login.jsp';</script>"); 
} 
 %>
  </body>
</html>

