<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�޸�����</title>
    

  </head>

  <body >
  <form name="form1" id="form1" method="post" action="mod_post.jsp">
    <table width="41%" height="126" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="9DC9FF" style="border-collapse:collapse">
    <tr>
      <td colspan="2"><div align="center">�޸�����</div></td>
    </tr>
    <tr>
      <td>ԭ���룺</td>
      <td><input name="ymm" type="text" id="ymm" /></td>
    </tr>
    <tr>
      <td>�����룺</td>
      <td><input name="xmm1" type="password" id="xmm1" /></td>
    </tr>
    <tr>
      <td>ȷ�����룺</td>
      <td><input name="xmm2" type="password" id="xmm2" /></td>
    </tr>
    <tr>
      <td><input type="submit" name="Submit" value="ȷ��" onClick="return check()" /></td>
      <td><input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
    </form>
  </body>
</html>

