<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>生成订单</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
  <%
   String zongjinez="";
  zongjinez=request.getParameter("zongjinez");
if(request.getParameter("zongjinez")!=null){
  if(Float.valueOf(zongjinez).floatValue()==0)
{
	out.print("<script>alert('对不起,您没有未下单的商品!');location.href='goumaijilu_list2.jsp';</script>");
	return;
}
}
//这种写法先判断不为空，因为在提交按钮点了之后，会跳转回这个页，而zongjinez此时是空的，因为跳转时重新刷新了页面，而zongjinez是上个页传过来的，本身这个页并没有值
//另一种写法：String sql3=  "select * from goumaijilu where goumairen='"+request.getSession().getAttribute("username")+"' and issh='否'";
//CommDAO dao = new CommDAO();
  //List<HashMap> userlist1 = dao.select(sql3);

  //if(userlist1.size()==0)
//{
	//out.print("<script>alert('对不起,您没有未下单的商品!');location.href='goumaijilu_list2.jsp';</script>");
	//return;
//}
//这种写法判断了能不能查询到未下单的记录，找不到则提示

  %>
  
<%
//xuxyaxodenxglxu


  String id="";
 

  String shanpianbianhaoz="";
  String shanpianmingchengz="";
  String goumaishuliangz="";
  String shanpianxinxiz="";
  String sql2=  "select * from goumaijilu where goumairen='"+request.getSession().getAttribute("username")+"' and issh='否'";
  ArrayList<HashMap> list = PageManager.getPages("",15,sql2, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	
	shanpianxinxiz=shanpianxinxiz+"商品编号："+(String)map.get("shangpinbianhao")+",商品名称："+(String)map.get("shangpinmingcheng")+",购买数量："+(String)map.get("goumaishuliang")+";";
	}

//txixgihxngjs
//youzuiping2
 
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="shengchengdingdan_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
ext.put("issh","否");
ext.put("iszf","否");
//jitihuan
String sql="update goumaijilu set issh='是' where goumairen='"+request.getSession().getAttribute("username")+"' and issh='否'";
	new CommDAO().commOper(sql); 

}
new CommDAO().insert(request,response,"shengchengdingdan",ext,true,false,"goumaijilu_list2.jsp"); 
%>

  <body >
 <form  action="shengchengdingdan_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加生成订单:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">订单号：</td><td><input name='dingdanhao' type='text' id='dingdanhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">商品信息：</td><td><textarea name='shangpinxinxi' cols='50' rows='5' id='shangpinxinxi'  onblur='checkform()' style='border:solid 1px #000000; color:#666666' ><%= shanpianxinxiz%></textarea>&nbsp;*<label id='clabelshangpinxinxi' /></td></tr>
		<tr><td  width="200">总金额：</td><td><input name='zongjine' type='text' id='zongjine' value='<%= zongjinez%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">购买人：</td><td><input name='goumairen' type='text' id='goumairen' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">联系电话：</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabellianxidianhua' />必需手机格式</td></tr>
		<tr><td  width="200">邮政编码：</td><td><input name='youzhengbianma' type='text' id='youzhengbianma' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">发货地址：</td><td><input name='fahuodizhi' type='text' id='fahuodizhi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var shangpinxinxiobj = document.getElementById("shangpinxinxi"); if(shangpinxinxiobj.value==""){document.getElementById("clabelshangpinxinxi").innerHTML="&nbsp;&nbsp;<font color=red>请输入商品信息</font>";return false;}else{document.getElementById("clabelshangpinxinxi").innerHTML="  "; } 
	var lianxidianhuaobj = document.getElementById("lianxidianhua"); if(lianxidianhuaobj.value!=""){ if(/^1[3|4|5|8][0-9]\d{4,8}$/.test(lianxidianhuaobj.value)){document.getElementById("clabellianxidianhua").innerHTML=""; }else{document.getElementById("clabellianxidianhua").innerHTML="&nbsp;&nbsp;<font color=red>必需手机格式</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


