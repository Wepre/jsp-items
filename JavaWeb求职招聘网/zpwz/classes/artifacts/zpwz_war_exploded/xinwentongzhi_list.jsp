
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
    
    <title>新闻通知</title><LINK href="css.css" type=text/css 
rel=stylesheet>
    

  </head>
  <script language="javascript">
  function checkall()
  {
  	if(document.form2.plxz.checked==true)
	{
		var code_Values = document.all['pldel']; 
		if(code_Values.length){ 
		for(var i=0;i<code_Values.length;i++) 
		{ 
		code_Values[i].checked = true; 
		} 
		}else{ 
		code_Values.checked = true; 
		} 
	}
	else
	{
		var code_Values = document.all['pldel']; 
		if(code_Values.length){ 
		for(var i=0;i<code_Values.length;i++) 
		{ 
		code_Values[i].checked = false; 
		} 
		}else{ 
		code_Values.checked = false; 
		} 
	}
  }
  </script>
 <%
String lb=new String(request.getParameter("lb").getBytes("8859_1"));
if (lb==null)
{
	lb="站内新闻";
}
 %>
  <body >
  <p>已有<%=lb%>列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索: 标题：<input name="biaoti" type="text" id="biaoti" />
   <input type="submit" name="Submit" value="查找" />
   <input type="button" name="Submit2" value="新增" onClick="javascript:location.href='xinwentongzhi_add.jsp?lb=<%=lb%>';" />
  </form>

  <form name="form2" method="post" action="delall.jsp">
    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
      <tr>
        <td width="30" align="center" bgcolor="CCFFFF">序号</td>
        <td bgcolor='#CCFFFF'>标题</td>
        <td bgcolor='#CCFFFF'>类别</td>
        <td bgcolor='#CCFFFF'>添加人</td>
        <td bgcolor='#CCFFFF'>首页图片</td>
        <td bgcolor='#CCFFFF'>点击率</td>
        <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
        <td width="60" align="center" bgcolor="CCFFFF">操作</td>
        <td width="50" align="center" bgcolor="CCFFFF"><input name="plxz" type="checkbox" id="plxz" onClick="checkall();" value="1">
            <input name="tablename" type="hidden" id="tablename" value="xinwentongzhi">
            <input name="lb" type="hidden" id="lb" value="<%=lb%>"></td>
      </tr>
      <%
  int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from xinwentongzhi where leibie='"+lb+"'";
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
  String sql="";
  sql="select top "+page_record+" * from xinwentongzhi where leibie='"+lb+"' and id not in (select top "+((curpage-1)*page_record)+" id from xinwentongzhi where leibie='"+lb+"' order by id desc) ";
  
if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+new String(request.getParameter("biaoti").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String biaoti="";String leibie="";String neirong="";String tianjiaren="";String shouyetupian="";String dianjilv="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");
leibie=RS_result.getString("leibie");
tianjiaren=RS_result.getString("tianjiaren");
shouyetupian=RS_result.getString("shouyetupian");
dianjilv=RS_result.getString("dianjilv");
 addtime=RS_result.getString("addtime");
 
 
%>
      <tr>
        <td width="30" align="center"><%=i %></td>
        <td><%=biaoti %></td>
        <td><%=leibie %></td>
        <td><%=tianjiaren %></td>
        <td><%
		if (shouyetupian==null || shouyetupian.equals("") || shouyetupian.equals("null"))
		{
		%>
            <%
		}
		else
		{
		%>
            <a href='<%=shouyetupian %>' target='_blank'><img src='<%=shouyetupian %>' width=88 height=99 border=0 /></a>
            <%
		}
	%>
        </td>
        <td><%=dianjilv %></td>
        <td width="138" align="center"><%=addtime %></td>
        <td width="60" align="center"><a href="xinwentongzhi_updt.jsp?id=<%=id%>">修改</a> <a href="delgg.jsp?id=<%=id %>&tablename=xinwentongzhi&lb=<%=lb%>" onClick="return confirm('真的要删除？')">删除</a></td>
        <td width="50" align="center"><input name="pldel" type="checkbox" id="pldel" value="<%=id%>"></td>
      </tr>
      <%
  }
   %>
    </table>
    
  <br>
  <p align="center">以上数据共<%=i %>条&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="xinwentongzhi_list.jsp?page=1&lb=<%=lb%>">首页</a>　<a href="xinwentongzhi_list.jsp?page=<%= curpage-1%>&lb=<%=lb%>">上一页</a>　<A href="xinwentongzhi_list.jsp?page=<%= curpage+1%>&lb=<%=lb%>">下一页</A>　<a href="xinwentongzhi_list.jsp?page=<%=zys %>&lb=<%=lb%>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页
  <input type="button" name="Submit32" value="打印本页" onClick="javascript:window.print();" style='border:solid 1px #000000; color:#666666'>
  <input type="submit" name="Submit33" value="批量删除" style='border:solid 1px #000000; color:#666666'>
</p>
 </form>   </body>
</html>

