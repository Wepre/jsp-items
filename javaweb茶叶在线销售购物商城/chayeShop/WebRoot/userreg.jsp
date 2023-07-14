<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
int p=3;
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
HashMap ext = new HashMap(); 
ext.put("issh","否"); 
new CommDAO().insert(request,response,"yonghuzhuce",ext,true,false,"index.jsp"); 
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
        	
            	<h2>用户注册 <b>UserReg</b></h2>
				 
                        <form  action="userreg.jsp?f=f"  method="post" name="f1"  onsubmit="return checkform();">
						<table width="98%" height="516" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00CC99" style="border-collapse:collapse">
                        
                            <tr>
                              <td width="15%">用户名：</td>
                              <td colspan="2"><input name='yonghuming' type='text' id='yonghuming' value='' onblur='checkform()'  /><label id='clabelyonghuming' />
                                &nbsp;*</td>
                            </tr>
                            <tr>
                              <td>密码：</td>
                              <td width="27%"><input name='mima' type='password' id='mima' value='' onblur='checkform()'  /><label id='clabelmima' />
                                &nbsp;* 
                              </td>
                              <td width="58%">确认密码：
                                <input name='mima2' type='password' id='mima2' value='' onblur='checkform()'>  <label id='clabelmima2' /> </td>
                            </tr>
                            <tr>
                              <td>姓名：</td>
                              <td colspan="2"><input name='xingming' type='text' id='xingming' value='' onblur='checkform()'  /><label id='clabelxingming' />
                                &nbsp;*</td>
                            </tr>
                            <tr>
                              <td>性别：</td>
                              <td colspan="2"><select name='xingbie' id='xingbie' style=" height:19px; border:solid 1px #000000; color:#666666">
                                  <option value="男">男</option>
                                  <option value="女">女</option>
                              </select></td>
                            </tr>
                            <tr>
                              <td>出生年月：</td>
                              <td colspan="2"><input name='chushengnianyue' type='text' id='chushengnianyue' value='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" /></td>
                            </tr>
                            <tr>
                              <td>QQ：</td>
                              <td colspan="2"><input name='QQ' type='text' id='QQ' value='' onblur='checkform()'  /> <label id='clabelQQ' /></td>
                            </tr>
                            <tr>
                              <td>邮箱：</td>
                              <td colspan="2"><input name='youxiang' type='text' id='youxiang' value='' onblur='checkform()'  /> <label id='clabelyouxiang' /></td>
                            </tr>
                            <tr>
                              <td>电话：</td>
                              <td colspan="2"><input name='dianhua' type='text' id='dianhua' value='' onblur='checkform()'  /> <label id='clabeldianhua' /></td>
                            </tr>
                            <tr>
                              <td>身份证：</td>
                              <td colspan="2"><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()'  /> <label id='clabelshenfenzheng' /> </td>
                            </tr>
                            <tr>
                              <td>头像：</td>
                              <td colspan="2"><input name='touxiang' type='text' id='touxiang' size='50' value='' />
                                &nbsp;
                                <input name="button" type='button' onClick="up('touxiang')" value='上传' style=" height:19px; width:60px; color:#666666"/></td>
                            </tr>
                            <tr>
                              <td>地址：</td>
                              <td colspan="2"><input name='dizhi' type='text' id='dizhi' value='' size='50' /></td>
                            </tr>
                            <tr>
                              <td>备注：</td>
                              <td colspan="2"><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td colspan="2"><input type="submit" name="Submit5" value="提交" onClick="return check();" style=" height:19px; width:60px; color:#666666"/>
                                  <input type="reset" name="Submit22" value="重置" style=" height:19px; width:60px;  color:#666666" /></td>
                            </tr>
                        </table>
	    </form>   	
                   				   
				   
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

<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script type="text/javascript" src="js/popup.js"></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript ><!--  
 
 function checkform(){  
var yonghumingobj = document.getElementById("yonghuming");  
if(yonghumingobj.value==""){  
document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";  
return false;  
}else{
document.getElementById("clabelyonghuming").innerHTML="  ";  
}  
  
var yonghumingobj = document.getElementById("yonghuming");  
if(yonghumingobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yonghuzhuce&col=yonghuming&value="+yonghumingobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false;
}else{document.getElementById("clabelyonghuming").innerHTML="  ";  
}  
}  
var mimaobj = document.getElementById("mima");  
if(mimaobj.value==""){  
document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";  
return false;  
}else{
document.getElementById("clabelmima").innerHTML="  ";  
}  

var mima2obj = document.getElementById("mima2");  
if(mima2obj.value==""){  
document.getElementById("clabelmima2").innerHTML="&nbsp;&nbsp;<font color=red>请再次输入密码</font>";  
return false;  
}else{
document.getElementById("clabelmima2").innerHTML="  ";  
}

if(mima2obj.value!=mimaobj.value){  
document.getElementById("clabelmima2").innerHTML="&nbsp;&nbsp;<font color=red>两次密码输入不一致</font>";  
return false;  
}else{
document.getElementById("clabelmima2").innerHTML="  ";  
}
 
  
var xingmingobj = document.getElementById("xingming");  
if(xingmingobj.value==""){  
document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";  
return false;  
}else{
document.getElementById("clabelxingming").innerHTML="  ";  
}  


var QQobj = document.getElementById("QQ");  
if(QQobj.value!=""){  
if(QQobj.value.length>12||isNaN(QQobj.value)){ 
document.getElementById("clabelQQ").innerHTML="&nbsp;&nbsp;<font color=red>联系QQ必须为12位以内数字</font>";  
return false;
}else{  
document.getElementById("clabelQQ").innerHTML="";  
}  
}  

var youxiangobj = document.getElementById("youxiang");  
if(youxiangobj.value!=""){  
if(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(youxiangobj.value))
{ 
document.getElementById("clabelyouxiang").innerHTML="";  
}else{  
document.getElementById("clabelyouxiang").innerHTML="&nbsp;&nbsp;<font color=red>必需邮箱格式</font>";  
return false;
}  
}  
  
var dianhuaobj = document.getElementById("dianhua");  
 

var shenfenzhengobj = document.getElementById("shenfenzheng");  
if(shenfenzhengobj.value!=""){  
if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value))
{ 
document.getElementById("clabelshenfenzheng").innerHTML="";  
}else{  
document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>必需身份证格式</font>";  
return false;
}  
}  



return true;   
}   
popheight=450;
--></script>  

