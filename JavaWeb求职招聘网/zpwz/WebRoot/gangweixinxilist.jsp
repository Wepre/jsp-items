<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>岗位信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {color: #D92B8A}
body {
	background-color: #D62E85;
}
.STYLE2 {
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE8 {color: #185838;
	font-weight: bold;
}
-->
</style>
</head>
  <%
String sql;
ResultSet RS_result;
%>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1002" height="1203" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1002" height="816" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" background="qtimages/3.jpg"><%@ include file="qtleft.jsp"%></td>
            <td valign="top" background="qtimages/2.jpg"><table id="__01" width="766" height="816" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td valign="top"><table id="__01" width="766" height="254" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="766" height="47" background="qtimages/1_02_02_01_01.jpg"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="13%" height="17" align="right" valign="bottom"><span class="STYLE2">岗位信息</span></td>
                        <td width="87%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="197" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="11" background="qtimages/1_02_02_01_02_01.jpg">&nbsp;</td>
                          <td width="728" height="760" valign="top" bgcolor="#FFFFFF">
						  
						  
						  <form name="form1" id="form1" method="post" action="">
   搜索: 公司名称：<input name="gongsimingcheng" type="text" id="gongsimingcheng"  style='border:solid 1px #000000; color:#666666' size="12"  /> 岗位名称：<input name="gangweimingcheng" type="text" id="gangweimingcheng"  style='border:solid 1px #000000; color:#666666' size="12"  />  学历要求：
   <select name='xueliyaoqiu' id='xueliyaoqiu'>
     <option value="">所有</option>
     <option value="硕士">硕士</option>
     <option value="本科">本科</option>
     <option value="大专">大专</option>
     <option value="高中">高中</option>
   </select>
   <input type="submit" name="Submit" value="查找" />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>公司名称</td><td bgcolor='#CCFFFF'>岗位名称</td><td bgcolor='#CCFFFF'>招聘人数</td><td bgcolor='#CCFFFF'>性别要求</td><td bgcolor='#CCFFFF'>学历要求</td><td bgcolor='#CCFFFF'>薪资待遇</td>
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <%
   int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from gangweixinxi";
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
  sql="select top "+page_record+" * from gangweixinxi where id not in (select top "+((curpage-1)*page_record)+" id from gangweixinxi order by id desc) ";
  
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
    <td><%=gongsimingcheng %></td><td><%=gangweimingcheng %></td><td><%=zhaopinrenshu %></td><td><%=xingbieyaoqiu %></td><td><%=xueliyaoqiu %></td><td><%=xinzidaiyu %></td>
    <td width="30" align="center"> <a href="gangweixinxidetail.jsp?id=<%=id%>" >详细</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="gangweixinxilist.jsp?page=1">首页</a>　<a href="gangweixinxilist.jsp?page=<%= curpage-1%>">上一页</a>　<A href="gangweixinxilist.jsp?page=<%= curpage+1%>">下一页</A>　<a href="gangweixinxilist.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
						
						
						  
						  </td>
                          <td width="27" background="qtimages/1_02_02_01_02_03.jpg">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03.jpg" width="766" height="10" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
</body>
</html>
