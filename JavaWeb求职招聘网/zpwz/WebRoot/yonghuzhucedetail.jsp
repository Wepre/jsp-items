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
<%
  String id=request.getParameter("id");
  
   connDbBean.executeUpdate("update yonghuzhuce set hits=hits+1 where id="+id);
   
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
                        <td width="22%" height="17" align="right" valign="bottom"><span class="STYLE2">人才查询</span></td>
                        <td width="78%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="197" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="11" background="qtimages/1_02_02_01_02_01.jpg">&nbsp;</td>
                          <td width="728" height="760" valign="top" bgcolor="#FFFFFF"><p align="center">
                            <%
  String sql="select * from yonghuzhuce where id="+id;
  String jianli="";String hits="";
  String yonghuming="";String mima="";String xingming="";String xingbie="";String chushengnianyue="";String QQ="";String youxiang="";String dianhua="";String shenfenzheng="";String touxiang="";String dizhi="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  jianli=RS_result.getString("jianli");hits=RS_result.getString("hits");
  yonghuming=RS_result.getString("yonghuming");mima=RS_result.getString("mima");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");chushengnianyue=RS_result.getString("chushengnianyue");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");shenfenzheng=RS_result.getString("shenfenzheng");touxiang=RS_result.getString("touxiang");dizhi=RS_result.getString("dizhi");beizhu=RS_result.getString("beizhu");
  }
   %>
                          </p>
                            <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
  <td width='11%'>用户名：</td>
      <td width='56%'><%=yonghuming%></td>
    <td width="33%" colspan="2" rowspan="9" align="center"><img src="<%=touxiang%>" width="227" height="214"></td>
  </tr><tr>
    <td>被阅次数：</td>
    <td><%=hits%></td>
  </tr>
  <tr>
    <td width='11%'>姓名：</td>
    <td width='56%'><%=xingming%></td>
  </tr>
  <tr>
    <td>性别：</td>
    <td><%=xingbie%></td>
  </tr>
  <tr>
    <td width='11%'>出生年月：</td>
    <td width='56%'><%=chushengnianyue%></td>
  </tr>
  <tr>
    <td>QQ：</td>
    <td><%=QQ %></td>
  </tr>
  <tr>
    <td width='11%'>邮箱：</td>
    <td width='56%'><%=youxiang%></td>
  </tr>
  <tr>
    <td>电话：</td>
    <td><%=dianhua%></td>
  </tr>
  <tr>
    <td width='11%'>身份证：</td>
    <td width='56%'><%=shenfenzheng%></td>
  </tr>
  <tr>
    <td>地址：</td>
    <td colspan="3"><%=dizhi%></td>
  <tr>
    <td width='11%' height="91">备注：</td>
    <td colspan="3"><%=beizhu%></td>
  <tr>
    <td height="88" colspan="4" align="center"><%=jianli%></td>
  </tr>
  <tr>
    <td colspan="4" align="center"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back()" /></td>
  </tr>
                            </table>
                            <p align="center">&nbsp;</p>
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