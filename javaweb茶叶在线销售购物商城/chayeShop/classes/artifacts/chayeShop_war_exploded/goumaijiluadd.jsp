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

</head>

<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"shangpinxinxi");
  String shangpinbianhao="";
  	String shangpinmingcheng="";
  	String shangpinleibie="";
  	String xiaoshoujiage="";
  	String kucun="";
  	
  shangpinbianhao=(String)mlbdq.get("shangpinbianhao");
  	shangpinmingcheng=(String)mlbdq.get("shangpinmingcheng");
  	shangpinleibie=(String)mlbdq.get("shangpinleibie");
  	xiaoshoujiage=(String)mlbdq.get("xiaoshoujiage");
  	kucun=(String)mlbdq.get("kucun");
  	

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var shangpinbianhaoobj = document.getElementById("shangpinbianhao"); if(shangpinbianhaoobj.value==""){document.getElementById("clabelshangpinbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入商品编号</font>";return false;}else{document.getElementById("clabelshangpinbianhao").innerHTML="  "; } 
	var shangpinmingchengobj = document.getElementById("shangpinmingcheng"); if(shangpinmingchengobj.value==""){document.getElementById("clabelshangpinmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入商品名称</font>";return false;}else{document.getElementById("clabelshangpinmingcheng").innerHTML="  "; } 
	var goumaishuliangobj = document.getElementById("goumaishuliang"); if(goumaishuliangobj.value==""){document.getElementById("clabelgoumaishuliang").innerHTML="&nbsp;&nbsp;<font color=red>请输入购买数量</font>";return false;}else{document.getElementById("clabelgoumaishuliang").innerHTML="  "; } 
	var goumaishuliangobj = document.getElementById("goumaishuliang"); if(goumaishuliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(goumaishuliangobj.value)){document.getElementById("clabelgoumaishuliang").innerHTML=""; }else{document.getElementById("clabelgoumaishuliang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    if(parseInt(document.form1.kucun.value)<parseInt(document.form1.goumaishuliang.value)){alert("对不起，库存必需大于购买数量");return false;}
	
}
function gow()
{
	document.location.href="goumaijiluadd.jsp?id=<%=id%>";
}
</script>
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
            	<h2>在线下单 <b>Product</b></h2>
                <ul>
				 		 
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
double zongjinej=0;zongjinej=Float.valueOf(request.getParameter("xiaoshoujiage")).floatValue()*Float.valueOf(request.getParameter("goumaishuliang")).floatValue();
//wxfladd
ext.put("issh","否");
//youzhifu
ext.put("zongjine",zongjinej);
	String sql="update shangpinxinxi set kucun=kucun-"+request.getParameter("goumaishuliang")+" where shangpinbianhao='"+request.getParameter("shangpinbianhao")+"'";
	new CommDAO().commOper(sql); 
 }
new CommDAO().insert(request,response,"goumaijilu",ext,true,false,"product.jsp"); 
%>
   <form  action="goumaijiluadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">商品编号：</td><td><input name='shangpinbianhao' type='text' id='shangpinbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshangpinbianhao' /></td></tr><script language="javascript">document.form1.shangpinbianhao.value='<%=shangpinbianhao%>';</script>
		<tr><td  width="200">商品名称：</td><td><input name='shangpinmingcheng' type='text' id='shangpinmingcheng' value='' onblur='checkform()' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshangpinmingcheng' /></td></tr><script language="javascript">document.form1.shangpinmingcheng.value='<%=shangpinmingcheng%>';</script>
		<tr><td  width="200">商品类别：</td><td><input name='shangpinleibie' type='text' id='shangpinleibie' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shangpinleibie.value='<%=shangpinleibie%>';</script>
		<tr><td  width="200">销售价格：</td><td><input name='xiaoshoujiage' type='text' id='xiaoshoujiage' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xiaoshoujiage.value='<%=xiaoshoujiage%>';</script>
		<tr><td  width="200">库存：</td><td><input name='kucun' type='text' id='kucun' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.kucun.value='<%=kucun%>';</script>
		<tr><td  width="200">购买数量：</td><td><input name='goumaishuliang' type='text' id='goumaishuliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelgoumaishuliang' />必需数字型</td></tr>
		<tr><td  width="200">购买人：</td><td><input name='goumairen' type='text' id='goumairen' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">总金额：</td><td> 此项不必填写，系统自动计算</td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='width:50px; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='width:50px; color:#666666' /></td>
    </tr>
	</table>
  </form>
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
