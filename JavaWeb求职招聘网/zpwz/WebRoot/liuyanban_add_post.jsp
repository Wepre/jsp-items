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
 

String cheng=request.getParameter("cheng");String xingbie=request.getParameter("xingbie");String QQ=request.getParameter("QQ");String youxiang=request.getParameter("youxiang");String dianhua=request.getParameter("dianhua");String neirong=request.getParameter("neirong");


	
  	  	String sql="insert into liuyanban(cheng,xingbie,QQ,youxiang,dianhua,neirong) values('"+cheng+"','"+xingbie+"','"+QQ+"','"+youxiang+"','"+dianhua+"','"+neirong+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('��ӳɹ�!!');location.href='lyblist.jsp';</script>");
  	  


 %>
  </body>
</html>

