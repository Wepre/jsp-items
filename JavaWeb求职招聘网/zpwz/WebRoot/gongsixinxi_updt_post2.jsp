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
String gongsibianhao=request.getParameter("gongsibianhao");String gongsimingcheng=request.getParameter("gongsimingcheng");String fuzeren=request.getParameter("fuzeren");String dianhua=request.getParameter("dianhua");String dizhi=request.getParameter("dizhi");String leibie=request.getParameter("leibie");String zhucezijin=request.getParameter("zhucezijin");String gongsiguimo=request.getParameter("gongsiguimo");String mima=request.getParameter("mima");String youxiang=request.getParameter("youxiang");String jianjie=request.getParameter("jianjie");
String sql="update gongsixinxi set gongsibianhao='"+gongsibianhao+"',gongsimingcheng='"+gongsimingcheng+"',fuzeren='"+fuzeren+"',dianhua='"+dianhua+"',dizhi='"+dizhi+"',leibie='"+leibie+"',zhucezijin='"+zhucezijin+"',gongsiguimo='"+gongsiguimo+"',mima='"+mima+"',youxiang='"+youxiang+"',jianjie='"+jianjie+"' where gongsibianhao= '"+request.getSession().getAttribute("username")+"'";
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='gongsixinxi_updt2.jsp';</script>");
%>
  </body>
</html>


