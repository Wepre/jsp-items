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
 
  String ymm=request.getParameter("ymm");
 String xmm1=request.getParameter("xmm1");
 ResultSet RS_result=connDbBean.executeQuery("select * from [allusers] where username='"+request.getSession().getAttribute("username")+"'");

 if(!RS_result.next())
{
out.print("<script>alert('ϵͳ����,����ԽȨ����!');window.history.go(-1);</script>");
	}
else{

	String pwd=RS_result.getString("pwd");
	
  	  if(pwd.equals(ymm))
  	  {
  	  	String sql="update allusers set pwd='"+xmm1+"' where username='"+request.getSession().getAttribute("username")+"'";
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('�޸ĳɹ�!!');window.history.go(-1);</script>");
  	  }
  	  else
  	  {
  	  	out.print("<script>alert('�Բ���,����ԭ���벻��ȷ,������!');window.history.go(-1);</script>");
  	  }
	}
RS_result.close();
 %>
  </body>
</html>

