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
    <title>公司信息</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有公司信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;公司编号：<input name="gongsibianhao" type="text" id="gongsibianhao" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;公司名称：<input name="gongsimingcheng" type="text" id="gongsimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;电话：<input name="dianhua" type="text" id="dianhua" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;地址：<input name="dizhi" type="text" id="dizhi" style='border:solid 1px #000000; color:#666666' size="12" />  类别：
   <select name='leibie' id='leibie'>
     <option value="">所有</option>
	 <option value="IT类">IT类</option>
     <option value="饮食类">饮食类</option>
     <option value="生产类">生产类</option>
     <option value="服务类">服务类</option>
   </select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='gongsixinxi_listxls.jsp';" />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>公司编号</td><td bgcolor='#CCFFFF'>公司名称</td><td bgcolor='#CCFFFF'>负责人</td><td bgcolor='#CCFFFF'>电话</td><td bgcolor='#CCFFFF'>地址</td><td bgcolor='#CCFFFF'>类别</td><td bgcolor='#CCFFFF'>注册资金</td><td bgcolor='#CCFFFF'>公司规模</td><td bgcolor='#CCFFFF'>密码</td><td bgcolor='#CCFFFF'>邮箱</td><td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
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
				String fysql="select count(id) as ss from gongsixinxi";
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
  sql="select top 10 * from gongsixinxi where 1=1";
}
else
{
  sql="select top "+page_record+" * from gongsixinxi where id not in (select top "+((curpage-1)*page_record)+" id from gongsixinxi order by id desc) ";
}

  
if(request.getParameter("gongsibianhao")=="" ||request.getParameter("gongsibianhao")==null ){}else{sql=sql+" and gongsibianhao like '%"+new String(request.getParameter("gongsibianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("gongsimingcheng")=="" ||request.getParameter("gongsimingcheng")==null ){}else{sql=sql+" and gongsimingcheng like '%"+new String(request.getParameter("gongsimingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+new String(request.getParameter("dianhua").getBytes("8859_1"))+"%'";}
if(request.getParameter("dizhi")=="" ||request.getParameter("dizhi")==null ){}else{sql=sql+" and dizhi like '%"+new String(request.getParameter("dizhi").getBytes("8859_1"))+"%'";}
if(request.getParameter("leibie")=="所有" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+new String(request.getParameter("leibie").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gongsibianhao="";String gongsimingcheng="";String fuzeren="";String dianhua="";String dizhi="";String leibie="";String zhucezijin="";String gongsiguimo="";String mima="";String youxiang="";String jianjie="";String issh="";
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");fuzeren=RS_result.getString("fuzeren");dianhua=RS_result.getString("dianhua");dizhi=RS_result.getString("dizhi");leibie=RS_result.getString("leibie");zhucezijin=RS_result.getString("zhucezijin");gongsiguimo=RS_result.getString("gongsiguimo");mima=RS_result.getString("mima");youxiang=RS_result.getString("youxiang");jianjie=RS_result.getString("jianjie");issh=RS_result.getString("issh");
 addtime=RS_result.getString("addtime");
 //zoxngxetxoxngjxvi
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=gongsibianhao %></td><td><%=gongsimingcheng %></td><td><%=fuzeren %></td><td><%=dianhua %></td><td><%=dizhi %></td><td><%=leibie %></td><td><%=zhucezijin %></td><td><%=gongsiguimo %></td><td><%=mima %></td><td><%=youxiang %></td><td width='80' align='center'><a href="sh.jsp?id=<%=id%>&yuan=<%=issh%>&tablename=gongsixinxi" onClick="return confirm('您确定要执行此操作？')"><%=issh%></a></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="90" align="center"><a href="gongsixinxi_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=gongsixinxi" onClick="return confirm('真的要删除？')">删除</a> <a href="gongsixinxidetail.jsp?id=<%=id%>" target="_blank">详细</a></td>
  </tr>
  	<%
  }
   %>
</table>
<%//yougongzitongji%>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="gongsixinxi_list.jsp?page=1">首页</a>　<a href="gongsixinxi_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="gongsixinxi_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="gongsixinxi_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>
