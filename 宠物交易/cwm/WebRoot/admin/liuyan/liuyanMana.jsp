<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%String path = request.getContextPath();%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <script type="text/javascript">
    </script>
  </head>
  
  <BODY topmargin="0">
	     <c:forEach items="${requestScope.liuyanList}" var="liuyan" varStatus="sta">
	     <TABLE style="MARGIN-TOP: 8px; WORD-BREAK: break-all" borderColor=#e3e3e3 cellSpacing=0 borderColorDark=white cellPadding=0 rules=all width="98%"  borderColorLight=#e0e0e0 border=1>
	        <TR bgColor=#f0f0f0 height=30>
		          <TD style="TEXT-INDENT: 5px" width="12%" style="font-size: 11px;">${sta.index+1 }楼</TD>
		          <TD colSpan=2 style="font-size: 11px;">
		                <span style="float:left">【标题】${liuyan.title }</span>
		                <span style="float:right">${liuyan.shijian }&nbsp;&nbsp;&nbsp;&nbsp;<a style="color: red" href="<%=path %>/liuyan?type=liuyanDel&id=${liuyan.id}">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;</span>
		          </TD>
	        </TR>
	        <TR bgColor=#f9f9f9>
		          <TD vAlign=top align=middle rowSpan=3>
			            <TABLE style="MARGIN-TOP: 3px" cellSpacing=0 cellPadding=0  border=0>
				              <TR height="35%">
					                <TD align=middle width="30%">
					                   <IMG src="<%=path %>/img/user2.gif" style="border:1px solid #ccc; padding:3px;;width: 70px;height: 90px;">
					                   
					                </TD>
				              </TR>
		                </TABLE>
		          </TD>
	        </TR>
	        <TR height=20>
		          <TD style="PADDING-RIGHT: 6px; PADDING-LEFT: 6px; PADDING-BOTTOM: 6px; PADDING-TOP: 6px" vAlign=top style="font-size: 11px;">
		              &nbsp;&nbsp;<br/><img src="<%=path%>${liuyan.fujian}" style="width:100px;height:100px"/>
													&nbsp;&nbsp; ${liuyan.content }
		          </TD>
	        </TR>
	    </TABLE>
	    </c:forEach>
  </BODY>
</html>
