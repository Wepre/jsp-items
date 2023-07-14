<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
int p=8;
%>




<!doctype html>
<html class="no-js" lang="en">
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title></title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/common.css">
  <link rel="stylesheet" type="text/css" href="css/sub.css">
  <link rel="stylesheet" type="text/css" href="css/responsive.css">

<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<%@ include file="header.jsp"%>
<div class="menu_wrapper">
	 <div class="wrapper menu clearfix">
            <div id="menu">
                
				<%@ include file="header2.jsp"%>
            </div>
           
			<%@ include file="topsearch.jsp"%>
            </div>
    </div>

<div class="wrapper">
	<div class="about_con clearfix">
	<div class="banner"><img src="qtimages/about.jpg" width="998"></div>
    	<div class="about_logo" style="text-align:center;"><img src="qtimages/about_logo.jpg"></div>
		<br>
        <div class="show">
			<%
			
 
    HashMap m = new CommDAO().getmaps("leibie","系统简介","dx");
	out.print(m.get("content"));
     %>
			       </div>
    </div>
</div>
  <%@ include file="footer.jsp"%>
   </div>
 

</div>

  
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.1.min.js"><\/script>')</script>
  <script src="js/plugins.js"></script>
  <script src="js/script.js"></script>
</body>
</html>
