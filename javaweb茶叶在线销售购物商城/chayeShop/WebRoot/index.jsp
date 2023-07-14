<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
int p=1;
%>
<!doctype html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>茶叶销售系统</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/common.css">
  <link rel="stylesheet" type="text/css" href="css/index.css">
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
<div class="banner">
    <div id="slides">
    <div class="slides_container">
				
			 <%
										
    for(HashMap map:new CommDAO().select("select  id,biaoti,shouyetupian from xinwentongzhi where leibie='变幻图' and shouyetupian<>'' order by id desc",1,5)){
	
     %>
	            		<img src="<%=map.get("shouyetupian")%>"  >
  <%
			}
	 %>
                </div>
    </div>
</div>

<div class="wrapper">
<div class="index_content">
<div class="news_rideo clearfix">
	<div class="news">
    	<h2><span><a href="news.jsp?lb=最新动态">查看更多</a></span>最新动态 <b>NEWS</b></h2>
        <ul>
		 <%
			int i=0;							
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='最新动态' order by id desc ",1,5)){
	i=i+1;
     %>
			        	<li><span><%=map.get("addtime").toString().substring(0,10) %></span><b <%
						if(i==1){out.print("class='one'");}
						if(i==2){out.print("class='two'");}
						if(i==3){out.print("class='three'");}
					
						%>><%=i%></b><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),24)%></a></li>
			        	 <%
							}
							%>
			          
        </ul>
    </div>
    <div class="rideo">
    	
          <div class="mv">
		 <%=new CommDAO().DynamicImage("",6,425,220) %>
		  
		  </div>
		  
		
    </div>
    
</div>
<div class="sub_index_show clearfix">
		 <%
			 i=0;							
    for(HashMap map:new CommDAO().select("select * from shangpinxinxi   order by id desc ",1,3)){
	i=i+1;
     %>
		
				<dl <%if(i==3){out.print("class='last'");}%>>
        	<dt><a href="shangpinxinxidetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("zhaopian")%>" width="324" height="221"></a></dt>
            <dd ><%=Info.ensubStr(map.get("shangpinmingcheng"),20)%></dd>
        </dl>
		 <%
							}
							%>
		
		 		
		
		 			
    	
    </div>
<div class="gufa">
	<h2>热销排行 <b>Product</b></h2>
    <div class="gufa_con clearfix">
    	<ul>
			 <%
			 i=0;							
    for(HashMap map:new CommDAO().select("select * from shangpinxinxi   order by xiaoliang desc,id desc ",1,3)){
	i=i+1;
     %>
			        	<li><a href="shangpinxinxidetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("zhaopian")%>"  style="width: 270px;
    height: 270px;
    background: #7fee1d;
    -moz-border-radius: 100px;
    -webkit-border-radius: 100px;
    border-radius: 100px;"><p><%=Info.ensubStr(map.get("shangpinmingcheng"),20)%></p></a></li>
	 <%
							}
							%>
		
                    	
                    </ul>
        
    </div>
</div>
<div class="medical">
	<h2>本站推荐 <b>Product</b></h2>
    <div class="medical_con clearfix">
	<%
			 i=0;							
    for(HashMap map:new CommDAO().select("select * from shangpinxinxi order by issh desc,id desc ",1,4)){
	i=i+1;
     %>
    			<dl <%if(i==4){out.print("class='last'");}%> >
        	<dt><a href="shangpinxinxidetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("zhaopian")%>" width="232" height="279"></a></dt>
            <dd><a href="shangpinxinxidetail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("shangpinmingcheng"),20)%></a></dd>
        </dl>
         		 <%
							}
							%>
         		
    </div>
</div>
</div>
</div>
<%@ include file="footer.jsp"%>

    </div>
  

</div>


  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.1.min.js"><\/script>')</script>
  <script src="js/slides.min.jquery.js"></script>
  <script src="js/jcarousellite.js"></script>
  <script src="js/plugins.js"></script>
  <script src="js/script.js"></script>
</body>
</html>
<script>
		$(function(){
			$('#slides').slides({
				preload: true,
				preloadImage: 'img/loading.gif',
				play: 3000,
				pause:5000,
				generateNextPrev: true, 
				hoverPause: true
			});
		});
</script>