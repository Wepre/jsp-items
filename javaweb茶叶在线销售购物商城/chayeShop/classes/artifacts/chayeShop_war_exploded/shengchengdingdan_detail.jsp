<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>生成订单详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"shengchengdingdan");
     %>
  生成订单详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>订单号：</td><td width='39%'><%=m.get("dingdanhao")%></td>
<td width='11%'>商品信息：</td><td width='39%'><%=m.get("shangpinxinxi")%></td></tr><tr>
<td width='11%'>总金额：</td><td width='39%'><%=m.get("zongjine")%></td>
<td width='11%'>购买人：</td><td width='39%'><%=m.get("goumairen")%></td></tr><tr>
<td width='11%'>联系电话：</td><td width='39%'><%=m.get("lianxidianhua")%></td>
<td width='11%'>邮政编码：</td><td width='39%'><%=m.get("youzhengbianma")%></td></tr><tr>
<td width='11%'>发货地址：</td><td width='39%'><%=m.get("fahuodizhi")%></td>
<td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


