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
String yonghuming=request.getParameter("yonghuming");String mima=request.getParameter("mima");String xingming=request.getParameter("xingming");String xingbie=request.getParameter("xingbie");String chushengnianyue=request.getParameter("chushengnianyue");String QQ=request.getParameter("QQ");String youxiang=request.getParameter("youxiang");String dianhua=request.getParameter("dianhua");String shenfenzheng=request.getParameter("shenfenzheng");String touxiang=request.getParameter("touxiang");String dizhi=request.getParameter("dizhi");String beizhu=request.getParameter("beizhu");
String id=request.getParameter("id");
String sql="update yonghuzhuce set yonghuming='"+yonghuming+"',mima='"+mima+"',xingming='"+xingming+"',xingbie='"+xingbie+"',chushengnianyue='"+chushengnianyue+"',QQ='"+QQ+"',youxiang='"+youxiang+"',dianhua='"+dianhua+"',shenfenzheng='"+shenfenzheng+"',touxiang='"+touxiang+"',dizhi='"+dizhi+"',beizhu='"+beizhu+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('�޸ĳɹ�!!');location.href='yonghuzhuce_list.jsp';</script>");
%>
  </body>
</html>


