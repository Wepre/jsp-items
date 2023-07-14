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
 String cx="不是员工";
 String sql="";
 if(cx.equals("员工"))
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
	out.print("<script>alert('你输入的用户不存在或密码错误,请重新登录!');window.history.go(-1);</script>");
	}
else{
	
  	  session.setAttribute("username",uid);
	if(cx.equals("员工"))
 	{
  	  session.setAttribute("cx","员工");
  	  }
	  else
	  {
	  	session.setAttribute("cx",RS_result.getString("cx"));
	  }
	 response.sendRedirect("main.jsp");	 
	} 
RS_result.close();
} else{ 
out.print("<script>alert('请输入正确的验证码！');location.href='login.jsp';</script>"); 
} 
 %>
  </body>
</html>

