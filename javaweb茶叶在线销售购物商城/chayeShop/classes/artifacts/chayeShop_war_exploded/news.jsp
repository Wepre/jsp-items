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

<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
 <%
  String lb=request.getParameter("lb");
  if(lb==null){lb="最新动态";}
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
    String url = "news.jsp?lb="+lb; 
    String sql =  "select * from xinwentongzhi where leibie='"+lb+"' ";
	if(request.getParameter("keyword")=="" ||request.getParameter("keyword")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("keyword").trim()+"%'";}

    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,20,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
				                 	<li><span><%=map.get("addtime").toString().substring(0,10) %></span><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),24)%></a></li>
									 <%} %>
                                   	
                   				   
				   
                </ul>
                <div class="page">
                       ${page.info } 
				</div>
            </div>
            <div class="news_better">
            	 <h2>推荐阅读 <b>Recommend</b></h2>
                <ul>
				 <%
									
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='"+lb+"'   order by id asc ",1,5)){
	
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
