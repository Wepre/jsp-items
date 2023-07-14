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
String gongsibianhao=request.getParameter("gongsibianhao");String gongsimingcheng=request.getParameter("gongsimingcheng");String gangweimingcheng=request.getParameter("gangweimingcheng");String xinzidaiyu=request.getParameter("xinzidaiyu");String yingpinren=request.getParameter("yingpinren");String gongsihuifu=request.getParameter("gongsihuifu");
String id=request.getParameter("id");
String sql="update yingpinjilu set gongsibianhao='"+gongsibianhao+"',gongsimingcheng='"+gongsimingcheng+"',gangweimingcheng='"+gangweimingcheng+"',xinzidaiyu='"+xinzidaiyu+"',yingpinren='"+yingpinren+"',gongsihuifu='"+gongsihuifu+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('…Ë÷√≥…π¶!!');location.href='yingpinjilu_updtlb.jsp?id="+id+"';</script>");
%>
  </body>
</html>


