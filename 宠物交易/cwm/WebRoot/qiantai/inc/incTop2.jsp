<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
         function admin()
         {
            var url="<%=path %>/login.jsp";
            window.open(url,"_blank");
         } 
         
         function liuyanAll()
         {
            <c:if test="${sessionScope.user==null}">
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
               
                var url="<%=path %>/liuyan?type=liuyanAll";
                window.location.href=url;
				 
            </c:if>
         } 
         
         function myXinxi()
         {
            <c:if test="${sessionScope.user==null}">
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var url="<%=path %>/qiantai/userinfo/userXinxi.jsp";
                var n="";
                var w="480px";
                var h="500px";
                var s="resizable:no;help:no;status:no;scroll:yes";
			    openWin(url,n,w,h,s);
            </c:if>
         } 
         
         function mycart()
         {
            <c:if test="${sessionScope.user==null}">
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var url="<%=path %>/qiantai/cart/mycart.jsp";
                window.open(url,"_self");
            </c:if>
         } 
         
         function myorder()
         {
            <c:if test="${sessionScope.user==null}">
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var url="<%=path %>/buy?type=myorder";
                window.open(url,"_self");
            </c:if>
         } 
         
         function reg()
	        {
	                var url="<%=path %>/qiantai/userinfo/userReg.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	        }
      </script>
  </head>
  
  <body>
      
       <A href="<%=path %>/qiantai/default.jsp" style="color:white;font-weight:bolder;margin-right:22px">系统首页</A> 
       <A href="<%=path %>/gonggao?type=gonggaoList&xxtype=2" style="color:white;font-weight:bolder;margin-right:22px">行业新闻</A> 
       <A href="<%=path %>/gonggao?type=gonggaoList&xxtype=1" style="color:white;font-weight:bolder;margin-right:22px">宠物猫知识</A> 
        <A href="<%=path %>/gonggao?type=gonggaoList&xxtype=3" style="color:white;font-weight:bolder;margin-right:22px">宠物猫预订</A> 
      
       
       <a href="#" onclick="myXinxi()" style="color:white;font-weight:bolder;margin-right:22px">我的信息</A>
       <a href="#" onclick="mycart()" style="color:white;font-weight:bolder;margin-right:22px">我的购物车</A>
       <a href="#" onclick="myorder()" style="color:white;font-weight:bolder;margin-right:22px">我的订单</A> 
       <a href="#" onclick="liuyanAll()" style="color:white;font-weight:bolder;margin-right:22px">晒猫平台</A>
	   <a href="#" onclick="admin()" style="color:white;font-weight:bolder;margin-right:22px">后台管理</a>
  </body>
</html>
