
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
    
    <title>���԰�</title>
    

  </head>

  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="liuyanban_updt_post.jsp?id=<%=id %>">
  �޸����԰�:
  <br><br>
  <%
  String sql="select * from liuyanban where id="+id;
  String cheng="";String xingbie="";String QQ="";String youxiang="";String dianhua="";String neirong="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  cheng=RS_result.getString("cheng");xingbie=RS_result.getString("xingbie");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");neirong=RS_result.getString("neirong");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>�ǳƣ�</td><td><input name='cheng' type='text' id='cheng' value='<%= cheng%>' /></td></tr><tr><td>�Ա�</td><td><input name='xingbie' type='text' id='xingbie' value='<%= xingbie%>' /></td></tr><tr><td>QQ��</td><td><input name='QQ' type='text' id='QQ' value='<%= QQ%>' /></td></tr><tr><td>���䣺</td><td><input name='youxiang' type='text' id='youxiang' value='<%= youxiang%>' /></td></tr><tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' /></td></tr><tr><td>���ݣ�</td><td><input name='neirong' type='text' id='neirong' value='<%= neirong%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


