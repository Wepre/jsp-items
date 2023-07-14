<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
        <script language="javascript">
           function goodsDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/goods?type=goodsDel&id="+id;
               }
           }
           
           function goodsAdd()
           {
                 var url="<%=path %>/admin/goods/goodsAdd.jsp";
				 window.location.href=url;
           }
           function over(picPath)
	       {
			  if (picPath=="")picPath="/img/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }
		   
		   function goodsDetailHou(id)
           {
                 var url="<%=path %>/goods?type=goodsDetailHou&id="+id;
                 var n="";
                 var w="480px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="11" background="<%=path %>/img/tbg.gif">&nbsp;商品管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%">序号</td>
					<td width="7%">编号</td>
					<td width="15%">名称</td>
					<td width="7%">介绍</td>
					<td width="7%">年龄</td>
					<td width="7%">产地</td>
					<td width="7%">毛色</td>
					<td width="7%">体重</td>
					<td width="7%">图片</td>
					<td width="7%">价格</td>
					<td width="7%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.goodsList}" var="goods" varStatus="sta">
				<tr align='center' bgcolor="#FFFFFF">
					<td bgcolor="#FFFFFF" align="center">${sta.index+1}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.bianhao}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.mingcheng}</td>
					<td bgcolor="#FFFFFF" align="center"><a href="#" onclick="goodsDetailHou(${goods.id})" class="pn-loperator">商品描述</a></td>	
					<td bgcolor="#FFFFFF" align="center">${goods.pinpai}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.dizhi}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.dianhua}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.youxiang}</td>
					<td bgcolor="#FFFFFF" align="center"><div onmouseover = "over('<%=path %>/${goods.fujian}')" onmouseout = "out()" style="cursor:hand;">图片</div></td>
					<td bgcolor="#FFFFFF" align="center">${goods.shichangjia}</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="goodsDel(${goods.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
		    
		    
		    <table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			      <input type="button" value="添加" style="width: 80px;" onclick="goodsAdd()" />
			    </td>
			  </tr>
		    </table>
		    
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
				<TABLE id="tipTable" border="0" bgcolor="#ffffee">
					<TR align="center">
						<TD><img id="photo" src="" height="150" width="150"></TD>
					</TR>
				</TABLE>
			</div>
	</body>
</html>
