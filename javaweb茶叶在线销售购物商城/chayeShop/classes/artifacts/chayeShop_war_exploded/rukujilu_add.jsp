<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>入库记录</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="rukujilu_add.jsp?id=<%=id%>&shangpinbianhao="+document.form1.shangpinbianhao.value;
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
String sql="update shangpinxinxi set kucun=kucun+"+request.getParameter("rukushuliang")+" where shangpinbianhao='"+request.getParameter("shangpinbianhao")+"'";
	new CommDAO().commOper(sql); 

}
new CommDAO().insert(request,response,"rukujilu",ext,true,false,""); 
%>

  <body >
 <form  action="rukujilu_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加入库记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>商品编号：</td><td><%=Info.getselectsl("shangpinbianhao","shangpinxinxi","shangpinbianhao")%>&nbsp;*<label id='clabelshangpinbianhao' /></td></tr>
		<tr><td  width="200">商品名称：</td><td><input name='shangpinmingcheng' type='text' id='shangpinmingcheng' style='border:solid 1px #000000; color:#666666' >&nbsp;*<label id='clabelshangpinmingcheng' /></td></tr>
		<tr><td  width="200">商品类别：</td><td><input name='shangpinleibie' type='text' id='shangpinleibie' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">销售价格：</td><td><input name='xiaoshoujiage' type='text' id='xiaoshoujiage' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">入库价格：</td><td><input name='rukujiage' type='text' id='rukujiage' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelrukujiage' />必需数字型</td></tr>
		<tr><td  width="200">入库数量：</td><td><input name='rukushuliang' type='text' id='rukushuliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelrukushuliang' />必需数字型</td></tr>
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

<%
if(request.getParameter("shangpinbianhao")==null || request.getParameter("shangpinbianhao").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("shangpinbianhao",request.getParameter("shangpinbianhao"),"shangpinxinxi"); 
%>
<script language="javascript">
document.form1.shangpinbianhao.value="<%=mmm.get("shangpinbianhao")%>";
document.form1.shangpinmingcheng.value="<%=mmm.get("shangpinmingcheng")%>";
document.form1.shangpinleibie.value="<%=mmm.get("shangpinleibie")%>";
document.form1.xiaoshoujiage.value="<%=mmm.get("xiaoshoujiage")%>";
//suilafuzhi

</script>
<%
}
%>
<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var shangpinbianhaoobj = document.getElementById("shangpinbianhao"); if(shangpinbianhaoobj.value==""){document.getElementById("clabelshangpinbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入商品编号</font>";return false;}else{document.getElementById("clabelshangpinbianhao").innerHTML="  "; } 
	var shangpinmingchengobj = document.getElementById("shangpinmingcheng"); if(shangpinmingchengobj.value==""){document.getElementById("clabelshangpinmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入商品名称</font>";return false;}else{document.getElementById("clabelshangpinmingcheng").innerHTML="  "; } 
	var rukujiageobj = document.getElementById("rukujiage"); if(rukujiageobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(rukujiageobj.value)){document.getElementById("clabelrukujiage").innerHTML=""; }else{document.getElementById("clabelrukujiage").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var rukushuliangobj = document.getElementById("rukushuliang"); if(rukushuliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(rukushuliangobj.value)){document.getElementById("clabelrukushuliang").innerHTML=""; }else{document.getElementById("clabelrukushuliang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    if(parseInt(document.form1.xiaoshoujiage.value)<parseInt(document.form1.rukujiage.value)){alert("对不起，销售价格必需大于入库价格");return false;}
	


return true;   
}   
popheight=450;
</script>  


