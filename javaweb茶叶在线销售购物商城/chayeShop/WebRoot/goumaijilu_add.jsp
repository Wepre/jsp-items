<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�����¼</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"shangpinxinxi");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("goumairen",(String)request.getSession().getAttribute("username"),"shangpinxinxi");
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
<script language="javascript">

function gow()
{
	document.location.href="goumaijilu_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
double zongjinej=0;zongjinej=Float.valueOf(request.getParameter("xiaoshoujiage")).floatValue()*Float.valueOf(request.getParameter("goumaishuliang")).floatValue();
ext.put("issh","��");
//youzhifu
ext.put("zongjine",zongjinej);

}
new CommDAO().insert(request,response,"goumaijilu",ext,true,false,""); 
%>

  <body >
 <form  action="goumaijilu_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӹ����¼:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">��Ʒ��ţ�</td><td><input name='shangpinbianhao' type='text' id='shangpinbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshangpinbianhao' /></td></tr><script language="javascript">document.form1.shangpinbianhao.value='<%=shangpinbianhao%>';</script>
		<tr><td  width="200">��Ʒ���ƣ�</td><td><input name='shangpinmingcheng' type='text' id='shangpinmingcheng' value='' onblur='checkform()' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshangpinmingcheng' /></td></tr><script language="javascript">document.form1.shangpinmingcheng.value='<%=shangpinmingcheng%>';</script>
		<tr><td  width="200">��Ʒ���</td><td><input name='shangpinleibie' type='text' id='shangpinleibie' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shangpinleibie.value='<%=shangpinleibie%>';</script>
		<tr><td  width="200">���ۼ۸�</td><td><input name='xiaoshoujiage' type='text' id='xiaoshoujiage' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xiaoshoujiage.value='<%=xiaoshoujiage%>';</script>
		<tr><td  width="200">��棺</td><td><input name='kucun' type='text' id='kucun' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.kucun.value='<%=kucun%>';</script>
		<tr><td  width="200">����������</td><td><input name='goumaishuliang' type='text' id='goumaishuliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelgoumaishuliang' />����������</td></tr>
		<tr><td  width="200">�����ˣ�</td><td><input name='goumairen' type='text' id='goumairen' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">�ܽ�</td><td> �������д��ϵͳ�Զ�����</td></tr>
		<tr><td  width="200">��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
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
 
	var shangpinbianhaoobj = document.getElementById("shangpinbianhao"); if(shangpinbianhaoobj.value==""){document.getElementById("clabelshangpinbianhao").innerHTML="&nbsp;&nbsp;<font color=red>��������Ʒ���</font>";return false;}else{document.getElementById("clabelshangpinbianhao").innerHTML="  "; } 
	var shangpinmingchengobj = document.getElementById("shangpinmingcheng"); if(shangpinmingchengobj.value==""){document.getElementById("clabelshangpinmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>��������Ʒ����</font>";return false;}else{document.getElementById("clabelshangpinmingcheng").innerHTML="  "; } 
	var goumaishuliangobj = document.getElementById("goumaishuliang"); if(goumaishuliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(goumaishuliangobj.value)){document.getElementById("clabelgoumaishuliang").innerHTML=""; }else{document.getElementById("clabelgoumaishuliang").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    if(parseInt(document.form1.kucun.value)<parseInt(document.form1.goumaishuliang.value)){alert("�Բ��𣬿�������ڹ�������");return false;}
	


return true;   
}   
popheight=450;
</script>  


