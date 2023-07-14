<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   
    <LINK href="<%=path %>/css/css.css" type=text/css rel=stylesheet>
    
    
    <script type="text/javascript">
            function back1()
	        {
	           window.history.go(-1);
	        }
    </script>
  </head>
  
  <BODY text=#000000  leftMargin=0 topMargin=0>
	<div class="wrap"> 
		<TABLE  cellSpacing=0 cellPadding=0 width="100%" align=center border=0  style="height:235px;width:900px;background-repeat:no-repeat"  background="<%=path %>/img/reservation01.gif">
				<TR height="90">
					<TD align="center">
					    <jsp:include flush="true" page="/qiantai/inc/incTop1.jsp"></jsp:include> 
					</TD>
				</TR>
		</TABLE>
		
		
		<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD align="center">
						<jsp:include flush="true" page="/qiantai/inc/incTop2.jsp"></jsp:include>
					</TD>
				</TR>
		</TABLE>

        <TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
				    <TD class=Side vAlign=top align=right width="25%">
						<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
					</TD>
					<td width="1">&nbsp;</td>
					<TD class=Side vAlign=top align=right width="75%">
					    <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
									<TD class=head>
										<span style="float:left">订单确认</span>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
								<TR align="left" height="500">
									<TD>
									    <form action="<%=path %>/buy?type=orderSubmit" name="f" method="post">
					                        <table width="98%" align="center" border="0" cellpadding="9" cellspacing="9">
												<tr align='center'>
												    <td width="20%" bgcolor="#FFFFFF" align="left">
												          收货人帐号：
												    </td>
												    <td width="80%" bgcolor="#FFFFFF" align="left">
												         <input type="text" readonly="readonly" value="${sessionScope.user.loginname}"/>
												    </td>
												</tr>
												<tr align='center'>
												    <td width="20%" bgcolor="#FFFFFF" align="left">
												          收货人姓名：
												    </td>
												    <td width="80%" bgcolor="#FFFFFF" align="left">
												         <input type="text" readonly="readonly" value="${sessionScope.user.name}"/>
												    </td>
												</tr>
												<tr align='center'>
												    <td width="20%" bgcolor="#FFFFFF" align="left">
												          收货人联系方式：
												    </td>
												    <td width="80%" bgcolor="#FFFFFF" align="left">
												         <input type="text" readonly="readonly" value="${sessionScope.user.tel}"/>
												    </td>
												</tr>
												<tr align='center'>
												    <td width="20%" bgcolor="#FFFFFF" align="left">
												          收货人地址：
												    </td>
												    <td width="80%" bgcolor="#FFFFFF" align="left">
												         <input type="text" readonly="readonly" value="${sessionScope.user.address}"/>
												    </td>
												</tr>
												<tr align='center'>
												    <td width="20%" bgcolor="#FFFFFF" align="left">
												          送货地址：
												    </td>
												    <td width="80%" bgcolor="#FFFFFF" align="left">
												         <input type="text" name="songhuodizhi"/>
												    </td>
												</tr>
												<tr align='center'>
												    <td width="20%" bgcolor="#FFFFFF" align="left">
												          付款方式：
												    </td>
												    <td width="80%" bgcolor="#FFFFFF" align="left">
												         <select name="fukuanfangshi" style="width:155px;">
					   		                               <option value="货到付款">货到付款</option>
					   		                               <option value="银行付款">银行付款</option>
					   		                             </select>
												    </td>
												 </tr>
										    </table>
					        				<table>
					        				   <tr height="7"><td></td></tr>
							                   <tr>
							                       <td width="120"></td>
							                       <td><a href="#" onclick="back1()"><img border="0" src="<%=path %>/img/fanhui.jpg"/></a></td>
							                       <td><img border="0" src="<%=path %>/img/tijiao.jpg" onclick="javascript:document.f.submit();"/></td>
							                   </tr>
							               </table>
							            </form>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
		<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
    </div>
  </BODY>
</html>
