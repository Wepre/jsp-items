
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
    
    <title>��������</title>
    

  </head>

  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="youqinglianjie_updt_post.jsp?id=<%=id %>">
  �޸���������:
  <br><br>
  <%
  String sql="select * from youqinglianjie where id="+id;
  String wangzhanmingcheng="";String wangzhi="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  wangzhanmingcheng=RS_result.getString("wangzhanmingcheng");wangzhi=RS_result.getString("wangzhi");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>��վ���ƣ�</td><td><input name='wangzhanmingcheng' type='text' id='wangzhanmingcheng' value='<%= wangzhanmingcheng%>' /></td></tr><tr><td>��ַ��</td><td><input name='wangzhi' type='text' id='wangzhi' value='<%= wangzhi%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


