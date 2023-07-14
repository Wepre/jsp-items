<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=shengchengdingdan.xls");
%>
<html>
  <head>
    <title>生成订单</title>
  </head>

  <body >
  <p>已有生成订单列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>订单号</td>        <td bgcolor='#CCFFFF'>总金额</td>    <td bgcolor='#CCFFFF'>购买人</td>    <td bgcolor='#CCFFFF'>联系电话</td>    <td bgcolor='#CCFFFF'>邮政编码</td>    <td bgcolor='#CCFFFF'>发货地址</td>        <td bgcolor='#CCFFFF' width='80' align='center'>是否支付</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "shengchengdingdan_list.jsp?1=1"; 
    String sql =  "select * from shengchengdingdan where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("dingdanhao") %></td>        <td><%=map.get("zongjine") %></td>    <td><%=map.get("goumairen") %></td>    <td><%=map.get("lianxidianhua") %></td>    <td><%=map.get("youzhengbianma") %></td>    <td><%=map.get("fahuodizhi") %></td>        <td align='center'><%=map.get("iszf")%></td>    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=shengchengdingdan" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

