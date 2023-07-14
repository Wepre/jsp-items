<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
int p=2;
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

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.STYLE1 {
	color: #2F7A0A;
	font-weight: bold;
}
-->
</style>
</head>
 <%
  String id=request.getParameter("id");
   new CommDAO().commOper("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
%>
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
	<div class="news_con">
    	<div class="banner"><img src="qtimages/banner_subnews.jpg"></div>
        <div class="news_list_con clearfix">
        	<div class="news_list">
            	<h2>最新动态 <b>NEWS</b></h2>
                <ul>
				 
                         <%
    HashMap m = new CommDAO().getmap(id,"xinwentongzhi");
     %>
                          <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
                            <tr>
                              <td height="46" align="center" > <span class="STYLE1"><%=m.get("biaoti") %> (被访问<%=m.get("dianjilv") %>次) </span></td>
                            </tr>
                            <tr>
                              <td height="110" align="left"><%=m.get("neirong") %></td>
                            </tr>
                            <tr>
                              <td height="33" align="right"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();" style=" height:19px; width:60px; color:#666666"></td>
                            </tr>
                          </table>          	
                   				   
				   
                </ul>
               
            </div>
            <div class="news_better">
            	 <h2>推荐阅读 <b>Recommend</b></h2>
                <ul>
				 <%
									
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='"+m.get("leibie") +"'   order by id asc ",1,5)){
	
     %>
					                	<li><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),22)%></a></li>
					                	<%} %>
					
                </ul>            </div>
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
