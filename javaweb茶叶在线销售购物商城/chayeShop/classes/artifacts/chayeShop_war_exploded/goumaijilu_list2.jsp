<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>购买记录</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有购买记录列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  商品编号：<input name="shangpinbianhao" type="text" id="shangpinbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  商品名称：<input name="shangpinmingcheng" type="text" id="shangpinmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  商品类别：<input name="shangpinleibie" type="text" id="shangpinleibie" style='border:solid 1px #000000; color:#666666' size="12" />  购买人：<input name="goumairen" type="text" id="goumairen" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

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
    <td bgcolor='#CCFFFF' width='80' align='center'>已经下单</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	double zongjinez=0;
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"goumaijilu"); 
    String url = "goumaijilu_list2.jsp?1=1"; 
    String sql =  "select * from goumaijilu where goumairen='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("shangpinbianhao")=="" ||request.getParameter("shangpinbianhao")==null ){}else{sql=sql+" and shangpinbianhao like '%"+request.getParameter("shangpinbianhao")+"%'";}
if(request.getParameter("shangpinmingcheng")=="" ||request.getParameter("shangpinmingcheng")==null ){}else{sql=sql+" and shangpinmingcheng like '%"+request.getParameter("shangpinmingcheng")+"%'";}
if(request.getParameter("shangpinleibie")=="" ||request.getParameter("shangpinleibie")==null ){}else{sql=sql+" and shangpinleibie like '%"+request.getParameter("shangpinleibie")+"%'";}
if(request.getParameter("goumairen")=="" ||request.getParameter("goumairen")==null ){}else{sql=sql+" and goumairen like '%"+request.getParameter("goumairen")+"%'";}
    sql+=" order by id desc";
	String sql2= "select * from goumaijilu where goumairen='"+request.getSession().getAttribute("username")+"' and issh='否'";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	ArrayList<HashMap> list2 = PageManager.getPages(url,15,sql2, request); 
	int i=0;
	for(HashMap map:list2){ 
	i++;
	//wxflzhistri
	zongjinez=zongjinez+Float.valueOf((String)map.get("zongjine")).floatValue();
	}
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	

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
 
 <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="goumaijilu_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="goumaijilu_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="goumaijilu_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
共计未下单总金额:<%=zongjinez%>； <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  <a href="shengchengdingdan_add.jsp?zongjinez=<%= zongjinez%>">生成订单</a>
  </body>
</html>

