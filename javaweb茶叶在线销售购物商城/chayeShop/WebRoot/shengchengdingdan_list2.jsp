<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>生成订单</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有生成订单列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  订单号：<input name="dingdanhao" type="text" id="dingdanhao" style='border:solid 1px #000000; color:#666666' size="12" />  购买人：<input name="goumairen" type="text" id="goumairen" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>订单号</td>    <td bgcolor='#CCFFFF'>总金额</td>    <td bgcolor='#CCFFFF'>购买人</td>    <td bgcolor='#CCFFFF'>联系电话</td>    <td bgcolor='#CCFFFF'>邮政编码</td>    <td bgcolor='#CCFFFF'>发货地址</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否支付</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"shengchengdingdan"); 
    String url = "shengchengdingdan_list2.jsp?1=1"; 
    String sql =  "select * from shengchengdingdan where goumairen='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("dingdanhao")=="" ||request.getParameter("dingdanhao")==null ){}else{sql=sql+" and dingdanhao like '%"+request.getParameter("dingdanhao")+"%'";}if(request.getParameter("goumairen")=="" ||request.getParameter("goumairen")==null ){}else{sql=sql+" and goumairen like '%"+request.getParameter("goumairen")+"%'";}
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
    <td><%=map.get("dingdanhao") %></td>  <td><%=map.get("zongjine") %></td> <td><%=map.get("goumairen") %></td> <td><%=map.get("lianxidianhua") %></td> <td><%=map.get("youzhengbianma") %></td> <td><%=map.get("fahuodizhi") %></td>  <td align='center'><%=map.get("iszf")%>  <% if(map.get("iszf").equals("否")){%><a href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=shengchengdingdan"><font color='red'>支付</font></a> <%}%> </td>    <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="shengchengdingdan_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="shengchengdingdan_list2.jsp?scid=<%=map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a> <a href="shengchengdingdan_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

