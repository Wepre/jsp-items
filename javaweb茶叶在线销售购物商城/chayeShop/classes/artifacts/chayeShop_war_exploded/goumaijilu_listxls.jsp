<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=goumaijilu.xls");
%>
<html>
  <head>
    <title>购买记录</title>
  </head>

  <body >
  <p>已有购买记录列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>商品编号</td>
    <td bgcolor='#CCFFFF'>商品名称</td>
    <td bgcolor='#CCFFFF'>商品类别</td>
    <td bgcolor='#CCFFFF'>销售价格</td>
    <td bgcolor='#CCFFFF'>库存</td>
    <td bgcolor='#CCFFFF'>购买数量</td>
    <td bgcolor='#CCFFFF'>购买人</td>
    <td bgcolor='#CCFFFF'>总金额</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "goumaijilu_list.jsp?1=1"; 
    String sql =  "select * from goumaijilu where 1=1";
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
    <td><%=map.get("shangpinbianhao") %></td>
    <td><%=map.get("shangpinmingcheng") %></td>
    <td><%=map.get("shangpinleibie") %></td>
    <td><%=map.get("xiaoshoujiage") %></td>
    <td><%=map.get("kucun") %></td>
    <td><%=map.get("goumaishuliang") %></td>
    <td><%=map.get("goumairen") %></td>
    <td><%=map.get("zongjine") %></td>
    
    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=goumaijilu" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
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

