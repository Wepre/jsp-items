
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>

<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>dx</title>
    

  </head>

  <body >
 
  <form name="form1" id="form1" method="post" action="dx_post2.jsp">
  编辑个人简历:
  <br><br>
  <%
  String sql="select jianli from yonghuzhuce where yonghuming='"+request.getSession().getAttribute("username")+"'";
  String contdent="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
contdent=RS_result.getString("jianli");
  }
  if(contdent==null  || contdent.equals("") )
  {
  	sql="select content from dx where leibie='简历模板'";
		RS_result=connDbBean.executeQuery(sql);
		 while(RS_result.next()){
			contdent=RS_result.getString("content");
  			}
  }
  else
  {
  		
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>内容：</td><td><textarea name="content" style="display:none"><%=contdent %></textarea>
			<iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=content&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe>
			</td></tr>
     
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="确定编辑" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


