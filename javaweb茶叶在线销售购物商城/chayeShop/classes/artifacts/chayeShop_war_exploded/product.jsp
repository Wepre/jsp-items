<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
int p=7;
%>



<!doctype html>
<html class="no-js" lang="en"> 
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>��Ҷ����ϵͳ</title>
  
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
	<div class="product_con clearfix">
    	<div class="product_sidebar">
            <h2>��Ʒչʾ</h2>
            <p>Ŀǰ���������۷�ʽ�ϵ�Ѹ�٣���ݣ������ص㣬��ʵ���Ļ����ϣ�������������������һ������Ϊ�˺����й���ͳ���Ļ�����Խ��Խ����˸����л��Ļ��Ĳ������һ������Ϊ�˲��������</p>
        </div>
        <div class="product_show clearfix">
			            <% 
    String url = "product.jsp?1=1"; 
    String sql =  "select * from shangpinxinxi where 1=1 ";
	if(request.getParameter("keyword")=="" ||request.getParameter("keyword")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("keyword").trim()+"%'";}

    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,6,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
					    <dl>
            	<dt><a href="shangpinxinxidetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("zhaopian")%>"  width="161" height="230"><span></span></a></dt>
                <dd><a href="shangpinxinxidetail.jsp?id=<%=map.get("id")%>"><%=map.get("shangpinmingcheng")%></a></dd>
            </dl>
			<%
			}
			%>
			         
			           
                       
				
        </div>
		<div class="product_show clearfix"><p align="center"> ${page.info } </p>
					   <br></div>
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
