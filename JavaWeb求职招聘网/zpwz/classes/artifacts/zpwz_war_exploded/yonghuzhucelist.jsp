<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>招聘网</title>
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
                        <td width="22%" height="17" align="right" valign="bottom"><span class="STYLE2">人才查询</span></td>
                        <td width="78%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="197" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="11" background="qtimages/1_02_02_01_02_01.jpg">&nbsp;</td>
                          <td width="728" height="760" valign="top" bgcolor="#FFFFFF"><form name="form1" id="form1" method="post" action="">
                            用户名
                            <input name="yonghuming" type="text" id="yonghuming" size="12" />
                            姓名
  <input name="xingming" type="text" id="xingming" size="10" />
                            QQ
  <input name="QQ" type="text" id="QQ" size="12" />
                            邮箱
  <input name="youxiang" type="text" id="youxiang" size="12" />
                            电话
  <input name="dianhua" type="text" id="dianhua" size="12" />
  <input type="submit" name="Submit5" value="查找" />
                          </form>
                            <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
                              <tr>
                                <td width="30" align="center" bgcolor="CCFFFF">序号</td>
                                <td width="67" bgcolor='#CCFFFF'>用户名</td>
                                <td width="47" bgcolor='#CCFFFF'>姓名</td>
                                <td width="47" bgcolor='#CCFFFF'>性别</td>
                                <td width="88" bgcolor='#CCFFFF'>出生年月</td>
                                <td width="85" bgcolor='#CCFFFF'>QQ</td>
                                <td width="73" bgcolor='#CCFFFF'>邮箱</td>
                                <td width="106" bgcolor='#CCFFFF'>电话</td>
                                <td width="88" bgcolor='#CCFFFF'>头像</td>
                                <td align="center" bgcolor="CCFFFF">操作</td>
                              </tr>
                              <%
   int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from yonghuzhuce";
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
  sql="select top "+page_record+" * from yonghuzhuce where id not in (select top "+((curpage-1)*page_record)+" id from yonghuzhuce order by id desc) ";
  
if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+new String(request.getParameter("yonghuming").getBytes("8859_1"))+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+new String(request.getParameter("xingming").getBytes("8859_1"))+"%'";}
if(request.getParameter("QQ")=="" ||request.getParameter("QQ")==null ){}else{sql=sql+" and QQ like '%"+new String(request.getParameter("QQ").getBytes("8859_1"))+"%'";}
if(request.getParameter("youxiang")=="" ||request.getParameter("youxiang")==null ){}else{sql=sql+" and youxiang like '%"+new String(request.getParameter("youxiang").getBytes("8859_1"))+"%'";}
if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+new String(request.getParameter("dianhua").getBytes("8859_1"))+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+new String(request.getParameter("shenfenzheng").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String yonghuming="";String mima="";String xingming="";String xingbie="";String chushengnianyue="";String QQ="";String youxiang="";String dianhua="";String shenfenzheng="";String touxiang="";String dizhi="";String beizhu="";
 String addtime="";String issh="";
 int i=0;
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
yonghuming=RS_result.getString("yonghuming");mima=RS_result.getString("mima");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");chushengnianyue=RS_result.getString("chushengnianyue");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");shenfenzheng=RS_result.getString("shenfenzheng");touxiang=RS_result.getString("touxiang");dizhi=RS_result.getString("dizhi");beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime");issh=RS_result.getString("issh");
%>
                              <tr>
                                <td width="30" align="center"><%=i %></td>
                                <td><%=yonghuming %></td>
                                <td><%=xingming %></td>
                                <td><%=xingbie %></td>
                                <td><%=chushengnianyue %></td>
                                <td><%=QQ %></td>
                                <td><%=youxiang %></td>
                                <td><%=dianhua %></td>
                                <td><a href='<%=touxiang %>' target='_blank'><img src='<%=touxiang %>' width=88 height=99 border=0 /></a></td>
                                <td width="26" align="center"><a href="yonghuzhucedetail.jsp?id=<%=id%>">详细</a></td>
                              </tr>
                              <%
  }
   %>
                            </table>
                            <br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="yonghuzhucelist.jsp?page=1">首页</a>　<a href="yonghuzhucelist.jsp?page=<%= curpage-1%>">上一页</a>　<A href="yonghuzhucelist.jsp?page=<%= curpage+1%>">下一页</A>　<a href="yonghuzhucelist.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p><p align="center">&nbsp;</p>
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