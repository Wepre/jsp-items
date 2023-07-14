<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>公司信息</title>
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
                        <td width="21%" height="17" align="right" valign="bottom"><span class="STYLE2">公司信息详细</span></td>
                        <td width="79%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="197" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="11" background="qtimages/1_02_02_01_02_01.jpg">&nbsp;</td>
                          <td width="728" height="760" valign="top" bgcolor="#FFFFFF">
						  
						  
						  <%
  String sql="select * from gongsixinxi where id="+id;
  String gongsibianhao="";String gongsimingcheng="";String fuzeren="";String dianhua="";String dizhi="";String leibie="";String zhucezijin="";String gongsiguimo="";String mima="";String youxiang="";String jianjie="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");fuzeren=RS_result.getString("fuzeren");dianhua=RS_result.getString("dianhua");dizhi=RS_result.getString("dizhi");leibie=RS_result.getString("leibie");zhucezijin=RS_result.getString("zhucezijin");gongsiguimo=RS_result.getString("gongsiguimo");mima=RS_result.getString("mima");youxiang=RS_result.getString("youxiang");jianjie=RS_result.getString("jianjie");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>公司编号：</td><td width='39%'><%=gongsibianhao%></td><td width='11%'>公司名称：</td><td width='39%'><%=gongsimingcheng%></td></tr><tr><td width='11%'>负责人：</td><td width='39%'><%=fuzeren%></td><td width='11%'>电话：</td><td width='39%'><%=dianhua%></td></tr><tr><td width='11%'>邮箱：</td>
     <td width='39%'><%=youxiang%></td>
     <td width='11%'>类别：</td><td width='39%'><%=leibie%></td></tr><tr><td width='11%'>注册资金：</td><td width='39%'><%=zhucezijin%></td><td width='11%'>公司规模：</td><td width='39%'><%=gongsiguimo%></td></tr><tr><td width='11%'>地址：</td><td colspan="3"><%=dizhi%></td>
     </tr><tr><td width='11%' height="96">简介：</td><td colspan="3"><%=jianjie%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" style='border:solid 1px #000000; color:#666666' /> &nbsp; <input type=button name=Submit52 value=打印 onClick='javascript:window.print()' style='border:solid 1px #000000; color:#666666' /></td></tr>
  </table>
  
  
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
