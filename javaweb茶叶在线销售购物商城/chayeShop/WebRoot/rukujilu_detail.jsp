<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>����¼��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"rukujilu");
     %>
  ����¼��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>��Ʒ��ţ�</td><td width='39%'><%=m.get("shangpinbianhao")%></td>
<td width='11%'>��Ʒ���ƣ�</td><td width='39%'><%=m.get("shangpinmingcheng")%></td></tr><tr>
<td width='11%'>��Ʒ���</td><td width='39%'><%=m.get("shangpinleibie")%></td>
<td width='11%'>���ۼ۸�</td><td width='39%'><%=m.get("xiaoshoujiage")%></td></tr><tr>
<td width='11%'>���۸�</td><td width='39%'><%=m.get("rukujiage")%></td>
<td width='11%'>���������</td><td width='39%'><%=m.get("rukushuliang")%></td></tr><tr>
<td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td>
<td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


