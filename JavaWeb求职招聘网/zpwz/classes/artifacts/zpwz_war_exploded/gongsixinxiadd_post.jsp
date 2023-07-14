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
 ResultSet RS_result=connDbBean.executeQuery("select * from [gongsixinxi] where gongsibianhao='"+gongsibianhao+"'");

 if(RS_result.next())
{
out.print("<script>alert('该公司编号已经存在,请换其他公司编号!');window.history.go(-1);</script>");
	}
else{

	
  	  	String sql="insert into gongsixinxi(gongsibianhao,gongsimingcheng,fuzeren,dianhua,dizhi,leibie,zhucezijin,gongsiguimo,mima,youxiang,jianjie) values('"+gongsibianhao+"','"+gongsimingcheng+"','"+fuzeren+"','"+dianhua+"','"+dizhi+"','"+leibie+"','"+zhucezijin+"','"+gongsiguimo+"','"+mima+"','"+youxiang+"','"+jianjie+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('注册成功!请待管理员审核后方可登陆!');location.href='index.jsp';</script>");
  	  
	}
 RS_result.close();

 %>
  </body>
</html>

