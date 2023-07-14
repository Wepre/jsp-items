<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <script type="text/javascript">
         
      </script>
  </head>
  
  <body>
        <TABLE width="100%" height="160" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
				<TR>
					<TD class=head>
						<SPAN class=TAG>用户登录</SPAN>
					</TD>
				</TR>
				<TR>
					<TD class=middle align=left>
					    <jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include> 
					</TD>
				</TR>
		</TABLE>
		  <TABLE width="100%" height="40" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
				<TR>
					<TD class=head>
						<SPAN class=TAG>搜索宠物猫</SPAN>
					</TD>
				</TR>
				<TR>
					<TD class=middle align=left>
					     <input type="text" style="width:100px" id="searchtitle" name="searchtitle" value=""/>
					     &nbsp;<input type="button" value="搜索" onclick="search()"/>
					</TD>
				</TR>
		</TABLE>
		<TABLE width="100%" height="160" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
				<TR>
					<TD class=head>
						<SPAN class=TAG>宠物猫品种</SPAN>
					</TD>
				</TR>
				<TR>
					<TD class=middle align=left>
					   <table width="100%" cellpadding="8" cellspacing="8">
						     <c:forEach items="${sessionScope.catelogList}" var="catelog">
						          <tr>
						             <td align="left">
                                           <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
						                   <a href="<%=path %>/goods?type=goodsByCatelog&catelog_id=${catelog.id}" title="">${catelog.name}</a>
						             </td>
						          </tr>
						     </c:forEach>
					   </table> 
					</TD>
				</TR>
		</TABLE>
		<TABLE width="100%" height="160" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
				<TR>
					<TD class=head>
						<SPAN class=TAG>系统公告</SPAN>
					</TD>
				</TR>
				<TR>
					<TD class=middle align=left>
					   <table width="100%" cellpadding="8" cellspacing="8">
						     <c:forEach items="${sessionScope.gonggaoList}" var="gonggao">
						          <tr>
						             <td align="left">
						                 <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
                                         <a href="<%=path %>/gonggao?type=gonggaoDetailQian&id=${gonggao.id}" title="">${gonggao.title}</a>
                                     </td>
						          </tr>
						     </c:forEach>
					   </table> 
					</TD>
				</TR>
		</TABLE>
  </body>
</html>
<script>
   function search()
   {
       var sear=document.getElementById("searchtitle").value;
       
       document.location.href="<%=path %>/goods?type=search&title="+sear;
   }
</script>
