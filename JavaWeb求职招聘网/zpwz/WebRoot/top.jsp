
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
    
    <title>招聘网</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
.STYLE5 {color: #72AC27;
	font-size: 26pt;
}
.STYLE6 {color: #00FFFF}
.STYLE2 {font-size: 12px}
-->
</style>
  </head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table id="__01" width="1348" height="107" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td><table id="__01" width="1348" height="87" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="896" height="87" background="images/top_01_01.gif"><table width="57%" height="51" border="0" align="center">
              <tr>
                <td><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    <div align="center" class="STYLE5">
                      <div align="left" class="STYLE6">招聘网</div>
                    </div>
                </div></td>
              </tr>
            </table></td>
            <td width="452" height="87" background="images/top_01_02.gif"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="15%" height="31">&nbsp;</td>
                <td width="47%"><span  class="STYLE2"><font color=white>当前用户：<%=request.getSession().getAttribute("username") %> [<%=request.getSession().getAttribute("cx") %>]</font></span></td>
                <td width="18%"><a href="index.jsp" target="_parent"><span  class="STYLE2"><font color=white>返回首页</font></span></a></td>
                <td width="11%"><a href="logout.jsp" target="_parent"><span  class="STYLE2"><font color=white>退出</font></span></a></td>
                <td width="9%"></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td><table id="__01" width="1348" height="20" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><img src="images/top_02_01.gif" width="257" height="20" alt=""></td>
            <td><img src="images/top_02_02.gif" width="1091" height="20" alt=""></td>
          </tr>
        </table></td>
	</tr>
</table>
</BODY></HTML>