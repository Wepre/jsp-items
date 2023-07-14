<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>招聘网</title>
<link rel="stylesheet" type="text/css" href="images/style.css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/manager.js"></script>
<style type="text/css">
<!--
.STYLE2 {color: #00FFFF}
-->
</style>
  </head>
  

<body>
<table border="0" cellpadding="0" cellspacing="0" height="100%" width="1348" style="background:#D8130D;">
	<tbody>
		<tr>
			<td height="107" colspan="3" >
			
			
			<IFRAME 
      style="Z-INDEX:2; VISIBILITY:inherit; WIDTH:100%; HEIGHT:100%" 
      name="topFrame" id="topFrame"  marginWidth="0" marginHeight="0"
      src="top.jsp" frameBorder="0" noResize scrolling="no">
	</IFRAME>
			</td>
		</tr>
		
		<tr>
			<td width="236" align="middle" valign="top" id="mainLeft" style="background:#FFF;"><IFRAME 
      style="Z-INDEX:2; VISIBILITY:inherit; WIDTH:236; HEIGHT:100%" 
      name="leftFrame" id="leftFrame"  marginWidth="0" marginHeight="0"
      src="mygo.jsp" frameBorder="0" noResize scrolling="yes">
	</IFRAME></td>
			<td width="137" valign="middle" style="width:8px;"><div id="sysBar" style="cursor:pointer;"><img id="barImg" src="images/butClose.gif" alt="关闭/打开左栏" /></div></td>
			<td width="947" valign="top" style="width:100%"><iframe frameborder="0" id="mainFrame" name="mainFrame" scrolling="yes" src="sy.jsp" style="height:100%;visibility:inherit; width:100%;z-index:1;"></iframe></td>
		</tr>
		<tr>
			<td height="28" colspan="3" bgcolor="#EBF5FC" style="padding:0px 10px; font-size:12px;color:#2C89AD;background:url(images/down.gif) repeat-x;">
			  <span class="STYLE2">招聘网 当前日期：<%
	  java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);
	  %></span> </td>
		</tr>
	</tbody>
</table>

</body>
</html>