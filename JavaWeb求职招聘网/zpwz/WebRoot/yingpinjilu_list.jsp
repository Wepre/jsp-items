
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
    
    <title>应聘记录</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
    

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有应聘记录列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;公司名称：<input name="gongsimingcheng" type="text" id="gongsimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;岗位名称：<input name="gangweimingcheng" type="text" id="gangweimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;应聘人：<input name="yingpinren" type="text" id="yingpinren" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yingpinjilu_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>公司编号</td><td bgcolor='#CCFFFF'>公司名称</td><td bgcolor='#CCFFFF'>岗位名称</td><td bgcolor='#CCFFFF'>薪资待遇</td><td bgcolor='#CCFFFF'>应聘人</td><td bgcolor='#CCFFFF'>公司回复</td><td bgcolor='#CCFFFF' width='80' align='center'>应聘成功</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
  int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from yingpinjilu";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
   sql="";
  if ((curpage-1)*page_record==0 )
{
  sql="select top 10 * from yingpinjilu where 1=1";
}
else
{
  sql="select top "+page_record+" * from yingpinjilu where id not in (select top "+((curpage-1)*page_record)+" id from yingpinjilu order by id desc) ";
}
  
if(request.getParameter("gongsimingcheng")=="" ||request.getParameter("gongsimingcheng")==null ){}else{sql=sql+" and gongsimingcheng like '%"+new String(request.getParameter("gongsimingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("gangweimingcheng")=="" ||request.getParameter("gangweimingcheng")==null ){}else{sql=sql+" and gangweimingcheng like '%"+new String(request.getParameter("gangweimingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("yingpinren")=="" ||request.getParameter("yingpinren")==null ){}else{sql=sql+" and yingpinren like '%"+new String(request.getParameter("yingpinren").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gongsibianhao="";String gongsimingcheng="";String gangweimingcheng="";String xinzidaiyu="";String yingpinren="";String gongsihuifu="";String issh="";
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze

 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");gangweimingcheng=RS_result.getString("gangweimingcheng");xinzidaiyu=RS_result.getString("xinzidaiyu");yingpinren=RS_result.getString("yingpinren");gongsihuifu=RS_result.getString("gongsihuifu");issh=RS_result.getString("issh");
 addtime=RS_result.getString("addtime");
  //zoxngxetxoxngjxvi
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=gongsibianhao %></td><td><%=gongsimingcheng %></td><td><%=gangweimingcheng %></td><td><%=xinzidaiyu %></td><td><%=yingpinren %></td><td><%=gongsihuifu %></td><td width='80' align='center'><a href="sh.jsp?id=<%=id%>&yuan=<%=issh%>&tablename=yingpinjilu" onClick="return confirm('您确定要执行此操作？')"><%=issh%></a></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="yingpinjilu_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=yingpinjilu" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<%//yougongzitongji%>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="yingpinjilu_list.jsp?page=1">首页</a>　<a href="yingpinjilu_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="yingpinjilu_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="yingpinjilu_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

