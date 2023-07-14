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
//gdsosss ResultSet RS_result=connDbBean.executeQuery("select * from [yingpinjilu] where yingpinren='"+yingpinren+"'");

//gdsosss if(RS_result.next())
//gdsosss{
//gdsosssout.print("<script>alert('该应聘人已经存在,请换其他应聘人!');window.history.go(-1);</script>");
//gdsosss	}
//gdsossselse{

	
  	  	String sql="insert into yingpinjilu(gongsibianhao,gongsimingcheng,gangweimingcheng,xinzidaiyu,yingpinren,gongsihuifu) values('"+gongsibianhao+"','"+gongsimingcheng+"','"+gangweimingcheng+"','"+xinzidaiyu+"','"+yingpinren+"','"+gongsihuifu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('操作成功!请耐心等待对方回复!');location.href='index.jsp';</script>");
  	  
//gdsosss	}
//gdsosss RS_result.close();

 %>
  </body>
</html>

