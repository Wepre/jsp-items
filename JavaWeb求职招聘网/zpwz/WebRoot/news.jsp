<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>��Ƹ��</title>
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
-->
</style>
</head>
<%
String lb=new String(request.getParameter("lb").getBytes("8859_1"));
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
                        <td width="13%" height="17" align="right" valign="bottom"><span class="STYLE2"><%=lb%></span></td>
                        <td width="87%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="197" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="11" background="qtimages/1_02_02_01_02_01.jpg">&nbsp;</td>
                          <td width="728" height="760" valign="top" bgcolor="#FFFFFF"><table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#FA9090" class="newsline" style="border-collapse:collapse">
                            <%
  int curpage=1;//��ǰҳ
				int page_record=20;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from xinwentongzhi where leibie='"+lb+"'";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//��ȡ���ݵ�ֵ����Ҫ��ʾ��ҳ
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
if ((curpage-1)*page_record==0 )
  {
  sql="select top "+page_record+" * from xinwentongzhi where leibie='"+lb+"' ";
  }
  else
  {
  sql="select top "+page_record+" * from xinwentongzhi where leibie='"+lb+"' and id not in (select top "+((curpage-1)*page_record)+" id from xinwentongzhi where leibie='"+lb+"' order by id desc) ";
  }  
if(request.getParameter("keyword")=="" ||request.getParameter("keyword")==null ){}else{sql=sql+" and biaoti like '%"+new String(request.getParameter("keyword").getBytes("8859_1")).trim()+"%'";}
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String biaoti="";String leibie="";String neirong="";String tianjiaren="";String shouyetupian="";String dianjilv="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");leibie=RS_result.getString("leibie");neirong=RS_result.getString("neirong");tianjiaren=RS_result.getString("tianjiaren");shouyetupian=RS_result.getString("shouyetupian");dianjilv=RS_result.getString("dianjilv");
 addtime=RS_result.getString("addtime");
 
 
%>
                            <tr>
                              <td width="31" align="center"><%=i %></td>
                              <td width="517"><a href="gg_detail.jsp?id=<%=id%>"><%=biaoti %></a></td>
                            
                              <td width="79" align="center"><%=addtime.substring(0,10) %></td>
                            </tr>
                            <%
  }
   %>
                          </table>
                            <br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="news.jsp?page=1&lb=<%=lb%>">��ҳ</a>��<a href="news.jsp?page=<%= curpage-1%>&lb=<%=lb%>">��һҳ</a>��<A href="news.jsp?page=<%= curpage+1%>&lb=<%=lb%>">��һҳ</A>��<a href="news.jsp?page=<%=zys %>&lb=<%=lb%>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p></td>
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