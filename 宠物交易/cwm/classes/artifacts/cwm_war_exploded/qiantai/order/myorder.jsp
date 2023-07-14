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
	        function orderDetail(order_id)
	        {
	                 var url="<%=path %>/buy?type=orderDetail&order_id="+order_id;
	                 var n="";
	                 var w="600px";
	                 var h="500px";
	                 var s="resizable:no;help:no;status:no;scroll:yes";
				     openWin(url,n,w,h,s);
	        }
	       function orderShouhuo(id)
           {
               if(confirm('您确定收货吗？'))
               {
                   window.location.href="<%=path %>/buy?type=orderShouhuo&id="+id;
               }
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
										<span style="float:left">我的订单</span>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
								<TR align="left" height="500">
									<TD>
				                        <table width="98%" border="0" cellpadding="8" cellspacing="8" align="center" style="margin-top:8px">
											<tr align="center" bgcolor="#FAFAF1" height="22">
												<td width="15%">订单编号</td>
												<td width="15%">下单时间</td>
												<td width="15%">状态</td>
												
												<td width="15%">送货地址</td>
												<td width="10%">付款方式</td>
												<td width="5%">总金额</td>
												<td width="5%">明细</td>
									        </tr>	
											<c:forEach items="${requestScope.orderList}" var="order">
											<tr align='center' bgcolor="#FFFFFF" height="22">
												<td bgcolor="#FFFFFF" align="center">${order.bianhao}</td>
												<td bgcolor="#FFFFFF" align="center">${order.shijian}</td>
												<td bgcolor="#FFFFFF" align="center">
												     <c:if test="${order.zhuangtai=='no'}">
												         未发货
												     </c:if>
												    <c:if test="${order.zhuangtai=='yishou'}">
												          已收货
												     </c:if>
												     <c:if test="${order.zhuangtai=='yes'}">
												            已发货&nbsp;
												        <a href="#" style="color:red" onclick="orderShouhuo(${order.id})" >确认收货</a>
												     </c:if>
												</td>
												
												<td bgcolor="#FFFFFF" align="center">${order.songhuodizhi}</td>
												<td bgcolor="#FFFFFF" align="center">${order.fukuanfangshi}</td>
												<td bgcolor="#FFFFFF" align="center">${order.jine}</td>
												<td><input value="明细" type="button" onclick="orderDetail(${order.id})"/></td>
											</tr>
											</c:forEach>
										</table>
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
