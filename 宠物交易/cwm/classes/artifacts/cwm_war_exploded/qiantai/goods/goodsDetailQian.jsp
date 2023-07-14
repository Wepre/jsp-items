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
    <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
	<script type="text/javascript">
	        function buy1(kucun)
	        {
	            <c:if test="${sessionScope.user==null}">
	                alert("请先登录");
	            </c:if>
	            <c:if test="${sessionScope.user!=null}">
		            if(document.buy.quantity.value=="")
		            {
		                alert("请输入购买数量");
		                return false;
		            }
		            document.buy.submit();
	            </c:if>
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
										<SPAN class=TAG>商品详细信息</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
								<TR align="left" height="527">
									<TD align="center">
									    <form action="<%=path %>/buy?type=addToCart" method="post" name="buy">
			                                  <table width="100%" border="0" cellpadding="9" cellspacing="9">
												    <tr>
												       <td align="left"><img width="220" height="180" src="<%=path %>${requestScope.goods.fujian }" style="border:1px solid #ccc; padding:3px;"/></td>
												    </tr>
												    <tr>
												       <td align="left">商品编号：${requestScope.goods.bianhao }</td>
												    </tr>
												    <tr>
												       <td align="left">商品名称：${requestScope.goods.mingcheng }</td>
												    </tr>
												    <tr>
												       <td align="left">商品描述：<c:out value="${requestScope.goods.jieshao }" escapeXml="false"></c:out></td>
												    </tr>
												    <tr>
												       <td align="left">年龄：${requestScope.goods.pinpai }</td>
												    </tr>
												     <tr>
												       <td align="left">产地：${requestScope.goods.dizhi }</td>
												    </tr>
												     <tr>
												       <td align="left">毛色：${requestScope.goods.dianhua }</td>
												    </tr>
												     <tr>
												       <td align="left">体重：${requestScope.goods.youxiang }</td>
												    </tr>
												    <tr>
												       <td align="left">单价：${requestScope.goods.shichangjia }</td>
												    </tr>
												    <tr>
												       <td align="left">
												           <hr>
												             购买数量：<input type="text" name="quantity" value="1" size="8" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
												           <input type="hidden" name="goods_id" value="${requestScope.goods.id }"/>
												           <img onclick="buy1(${requestScope.goods.kucun })" src="<%=path %>/img/goumai.jpg"/>
												       </td>
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
