
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
  <%
  String lb=new String(request.getParameter("lb").getBytes("8859_1"));
   %>
  <form name="form1" id="form1" method="post" action="dx_post.jsp?lb=<%=lb %>">
  编辑<%=lb%>:
  <br><br>
  <%
  String sql="select * from dx where leibie='"+lb+"'";
  String contdent="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
contdent=RS_result.getString("content");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>内容：</td><td><textarea name="content" style="display:none"><%=contdent %></textarea>
			<iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=content&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe>
			<input name="lb" type="hidden" id="lb" value="<%=lb%>"></td></tr>
     
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="确定编辑" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


