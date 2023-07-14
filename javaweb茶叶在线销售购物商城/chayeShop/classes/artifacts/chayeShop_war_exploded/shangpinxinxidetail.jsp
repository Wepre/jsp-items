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
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
</head>
<%
	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"shangpinxinxi");
	//ldlbfz
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
    	
        <div class="news_list_con clearfix">
        	<div >
            	<h2>商品详细 <b>Product</b></h2>
                <ul>
				 
                         <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>商品编号：</td><td width='39%'><%=mqt.get("shangpinbianhao")%></td><td  rowspan=5 align=center><a href=<%=mqt.get("zhaopian")%> target=_blank><img src=<%=mqt.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr>
         <td width='11%' height=44>商品名称：</td><td width='39%'><%=mqt.get("shangpinmingcheng")%></td></tr><tr>
         <td width='11%' height=44>商品类别：</td><td width='39%'><%=mqt.get("shangpinleibie")%></td></tr><tr>
         <td width='11%' height=44>销售价格：</td><td width='39%'><%=mqt.get("xiaoshoujiage")%></td></tr><tr>
         <td width='11%' height=44>库存：</td><td width='39%'><%=mqt.get("kucun")%></td></tr><tr>
         
         
         <td width='11%' height=100  >商品详情：</td><td width='39%' colspan=2 height=100 ><%=mqt.get("shangpinxiangqing")%></td></tr><tr>							 
                                <td colspan="3"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
                                  <tr>
                                    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
                                    <td width="471" bgcolor='#CCFFFF'>评价内容</td>
                                    <td width="88" bgcolor='#CCFFFF'>评分</td>
                                    <td width="88" bgcolor='#CCFFFF'>评论人</td>
                                    <td width="138" align="center" bgcolor="CCFFFF">评论时间</td>
                                  </tr>
                                   <% 
							String sql =  "select * from pinglun where xinwenID='"+id+"' and biao='shangpinxinxi' ";
							sql+=" order by id desc";
							int i=0;
							 for(HashMap map:new CommDAO().select(sql)){
							 i++;
							 %>
                                  <tr>
                                    <td width="30" align="center" bgcolor='#CCFF99'><%=i%></td>
                                    <td width="471" bgcolor='#CCFF99'><%=map.get("pinglunneirong")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pingfen")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pinglunren")%></td>
                                    <td width="138" align="center" bgcolor="CCFF99"><%=map.get("addtime")%></td>
                                  </tr>
                                  <%
								  }
								   %>
                                </table></td>
                                </tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" style="width:50px;" />
<input type=button name=Submit52 value=打印 onClick="javascript:window.print()" style="width:50px;" />
<input type=button name=Submit53 value=评论 onClick="javascript:hsgpinglun('shangpinxinxi','<%=id%>')" style="width:50px;" />
<input type=button name=Submit52 value=收藏 onClick="javascript:location.href='jrsc.jsp?id=<%=mqt.get("id")%>&biao=shangpinxinxi&ziduan=shangpinmingcheng';"  style="width:50px;" />
<input type=button name=Submit6 value=购买 onClick="javascript:location.href='goumaijiluadd.jsp?id=<%=mqt.get("id")%>';" style="width:50px;" /></td></tr>
    
  </table>       	
                   				   
				   
                </ul>
               
            </div>
            
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
