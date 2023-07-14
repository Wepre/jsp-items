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
    <title>岗位信息</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有岗位信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;岗位名称：
   <input name="gangweimingcheng" type="text" id="gangweimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  学历要求：
   <select name='xueliyaoqiu' id='xueliyaoqiu'>
     <option value="">所有</option>
     <option value="硕士">硕士</option>
     <option value="本科">本科</option>
     <option value="大专">大专</option>
     <option value="高中">高中</option>
   </select>
    <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="96" bgcolor='#CCFFFF'>公司编号</td><td width="96" bgcolor='#CCFFFF'>公司名称</td><td width="96" bgcolor='#CCFFFF'>岗位名称</td><td width="96" bgcolor='#CCFFFF'>招聘人数</td><td width="96" bgcolor='#CCFFFF'>性别要求</td><td width="96" bgcolor='#CCFFFF'>学历要求</td><td width="102" bgcolor='#CCFFFF'>薪资待遇</td><td width="100" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="98" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
  int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from gangweixinxi where gongsibianhao='"+request.getSession().getAttribute("username")+"'";
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
  sql="select top "+page_record+" * from gangweixinxi where gongsibianhao='"+request.getSession().getAttribute("username")+"' and id not in (select top "+((curpage-1)*page_record)+" id from gangweixinxi where gongsibianhao='"+request.getSession().getAttribute("username")+"' order by id desc) ";
  
if(request.getParameter("gongsimingcheng")=="" ||request.getParameter("gongsimingcheng")==null ){}else{sql=sql+" and gongsimingcheng like '%"+new String(request.getParameter("gongsimingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("gangweimingcheng")=="" ||request.getParameter("gangweimingcheng")==null ){}else{sql=sql+" and gangweimingcheng like '%"+new String(request.getParameter("gangweimingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("xueliyaoqiu")=="所有" ||request.getParameter("xueliyaoqiu")==null ){}else{sql=sql+" and xueliyaoqiu like '%"+new String(request.getParameter("xueliyaoqiu").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gongsibianhao="";String gongsimingcheng="";String gangweimingcheng="";String zhaopinrenshu="";String xingbieyaoqiu="";String xueliyaoqiu="";String xinzidaiyu="";String jianjie="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");gangweimingcheng=RS_result.getString("gangweimingcheng");zhaopinrenshu=RS_result.getString("zhaopinrenshu");xingbieyaoqiu=RS_result.getString("xingbieyaoqiu");xueliyaoqiu=RS_result.getString("xueliyaoqiu");xinzidaiyu=RS_result.getString("xinzidaiyu");jianjie=RS_result.getString("jianjie");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=gongsibianhao %></td><td><%=gongsimingcheng %></td><td><%=gangweimingcheng %></td><td><%=zhaopinrenshu %></td><td><%=xingbieyaoqiu %></td><td><%=xueliyaoqiu %></td><td><%=xinzidaiyu %></td><td width="100" align="center"><%=addtime %></td>
    <td width="98" align="center"><a href="gangweixinxi_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=gangweixinxi" onClick="return confirm('真的要删除？')">删除</a> <a href="gangweixinxidetail.jsp?id=<%=id%>" target="_blank">详细</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="gangweixinxi_list2.jsp?page=1">首页</a>　<a href="gangweixinxi_list2.jsp?page=<%= curpage-1%>">上一页</a>　<A href="gangweixinxi_list2.jsp?page=<%= curpage+1%>">下一页</A>　<a href="gangweixinxi_list2.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

