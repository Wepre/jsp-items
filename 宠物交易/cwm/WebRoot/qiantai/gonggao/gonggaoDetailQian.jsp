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
										<SPAN class=TAG>信息详情</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
								<TR align="left" height="527">
									<TD align="center">
									    <c:out value="${requestScope.gonggao.content}" escapeXml="false"></c:out>
									</TD>
								</TR>
								<TR align="left">
								
									<TD height="5">
									
									<c:if test="${sessionScope.user!=null}">
               
          
				 
           
			<TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0
				cellPadding=0 width="100%" align=center border=0>
				<TR>

					<TD>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%"
							border=0>
							<TR align="left">
								<td>
									<c:forEach items="${requestScope.liuyanList}" var="liuyan"
										varStatus="sta">
										<table width="100%" border="0"
											style="border: 1px solid #000000;" cellpadding="0"
											cellspacing="0">
										
											<tr style="height: 40px">
												<td colspan="3">
													&nbsp;&nbsp;${liuyan.content }
												</td>
											</tr>
										</table>
									</c:forEach>
								</td>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<TABLE style="MARGIN-TOP: 8px; WORD-BREAK: break-all;height:200px"
				borderColor=#e3e3e3 cellSpacing=0 borderColorDark=white
				cellPadding=0 rules=all width="100%" borderColorLight=#e0e0e0
				border=1  >
				<TR bgColor=#f0f0f0 height=25>


				<TR>
					<TD style="height:100px">
						<form action="<%=path%>/yuding?type=yudingAdd" name="form1"
							method="post">
							<table border="0">
							<tr><td style="height:5px">&nbsp;</td></tr>
								<tr>
									<td style="font-size: 13px;">
										联系方式:
									</td>
									<td>
									<textarea name="content" id="content"  rows="1" cols="70"></textarea></td>
								</tr>
								<tr>
									<td style="font-size: 11px;">
										&nbsp;
									</td>
									<td>
									<input type="hidden" id="newsid" name="newsid" value="${requestScope.gonggao.id}"/>
										<input type="submit" name="" value="提交">
									</td>
								</tr>
							</table>
						</form>
					</TD>
				</TR>
			</TABLE>
									 </c:if>
									
									</TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
		<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
    </div>
  </BODY>
</html>
