
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
  <form name="form1" id="form1" method="post" action="hf_post.jsp?id=<%=id %>">
  �ظ�����:
  <br>
  <br>
  <%
  String sql="select * from liuyanban where id="+id;
  String cheng="";String xingbie="";String QQ="";String youxiang="";String dianhua="";String huifuneirong="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  cheng=RS_result.getString("cheng");xingbie=RS_result.getString("xingbie");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");huifuneirong=RS_result.getString("huifuneirong");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"><tr>
     <td>�ظ����ݣ�</td><td><textarea name="huifuneirong" cols="50" rows="5" id="huifuneirong"><%= huifuneirong%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


