<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<LINK href="<%=path%>/css/css.css" type=text/css rel=stylesheet>
		         
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	</head>

	<BODY text=#000000 leftMargin=0 topMargin=0>
		<div class="wrap">
			<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0  style="height:235px;width:900px;background-repeat:no-repeat" 
				background="<%=path%>/img/reservation01.gif">
				<TR height="90">
					<TD align="center">
						<jsp:include flush="true" page="/qiantai/inc/incTop1.jsp"></jsp:include>
					</TD>
				</TR>
			</TABLE>


			<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center
				border=0>
				<TR>
					<TD align="center">
						<jsp:include flush="true" page="/qiantai/inc/incTop2.jsp"></jsp:include>
					</TD>
				</TR>
			</TABLE>

			<TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0
				cellPadding=0 width="100%" align=center border=0>
				<TR>

					<TD>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%"
							border=0>
							<TR>
								<TD class=head>
									<SPAN class=TAG>晒猫平台</SPAN>
								</TD>
							</TR>
							<TR align="left">
								<td>
									<c:forEach items="${requestScope.liuyanList}" var="liuyan"
										varStatus="sta">
										<table width="100%" border="0"
											style="border: 1px solid #000000;" cellpadding="0"
											cellspacing="0">
											<tr style="background-color: #328932; height: 22px">
												<td style="width: 60%; color: white">
													&nbsp;
													<a style="font-weight: bolder">标题:</a>${liuyan.title}
												</td>
												<td style="width: 20%; color: white">
													<a style="font-weight: bolder; color: white">顾客姓名:</a>${liuyan.user_name}
												</td>
												<td style="width: 20%; color: white">
													<a style="font-weight: bolder; color: white">发布时间:</a>${liuyan.shijian}
												</td>
											</tr>
											<tr style="height: 40px">
												<td colspan="3">&nbsp;&nbsp;<br/><img src="<%=path%>${liuyan.fujian}" style="width:100px;height:100px"/>
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

					<TD style="font-size: 11px;">
						<span style="float: left;font-weight: bolder;font-size:15px;vertical-align:middle">&nbsp;我要晒猫 </span>
					</TD>
				</TR>

				<TR>
					<TD style="height:100px">
						<form action="<%=path%>/liuyan?type=liuyanAdd" name="form1"
							method="post">
							<table border="0">
							<tr><td style="height:5px">&nbsp;</td></tr>
								<tr>
									<td style="font-size: 13px;">
										标题:
									</td>
									<td>
										<input type="text" name="title" size="40" />
									</td>
								</tr>
								<tr>
									<td style="font-size: 13px;">
										照片:
									</td>
									<td>
									<input type="text" name="fujian" id="fujian" size="30" readonly="readonly"/>
							        <input type="button" value="上传" onclick="up()"/>
							        <input type="hidden" name="fujian" id="fujian"/>
									</td>
								</tr>
								 
								<tr>
									<td style="font-size: 13px;">
										内容:
									</td>
									<td>
									<textarea name="content" id="content"  rows="5" cols="70"></textarea>
								</tr>
								<tr>
									<td style="font-size: 11px;">
										&nbsp;
									</td>
									<td>
										<input type="submit" name="" value="提交">
									</td>
								</tr>
							</table>
						</form>
					</TD>
				</TR>
			</TABLE>
			<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
		</div>
	</BODY>
</html>
<script>
 function up()
	       {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
	       }
           
           function check()
           {
               if(document.formAdd.catelog_id.value==0)
               { 
                   alert("请选择类别");
                   return false;
               }
               
               return true;
           }
        
</script>
