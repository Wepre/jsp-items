<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>���ɶ���</title>
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
	out.print("<script>alert('�Բ���,��û��δ�µ�����Ʒ!');location.href='goumaijilu_list2.jsp';</script>");
	return;
}
}
//����д�����жϲ�Ϊ�գ���Ϊ���ύ��ť����֮�󣬻���ת�����ҳ����zongjinez��ʱ�ǿյģ���Ϊ��תʱ����ˢ����ҳ�棬��zongjinez���ϸ�ҳ�������ģ��������ҳ��û��ֵ
//��һ��д����String sql3=  "select * from goumaijilu where goumairen='"+request.getSession().getAttribute("username")+"' and issh='��'";
//CommDAO dao = new CommDAO();
  //List<HashMap> userlist1 = dao.select(sql3);

  //if(userlist1.size()==0)
//{
	//out.print("<script>alert('�Բ���,��û��δ�µ�����Ʒ!');location.href='goumaijilu_list2.jsp';</script>");
	//return;
//}
//����д���ж����ܲ��ܲ�ѯ��δ�µ��ļ�¼���Ҳ�������ʾ

  %>
  
<%
//xuxyaxodenxglxu


  String id="";
 

  String shanpianbianhaoz="";
  String shanpianmingchengz="";
  String goumaishuliangz="";
  String shanpianxinxiz="";
  String sql2=  "select * from goumaijilu where goumairen='"+request.getSession().getAttribute("username")+"' and issh='��'";
  ArrayList<HashMap> list = PageManager.getPages("",15,sql2, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	
	shanpianxinxiz=shanpianxinxiz+"��Ʒ��ţ�"+(String)map.get("shangpinbianhao")+",��Ʒ���ƣ�"+(String)map.get("shangpinmingcheng")+",����������"+(String)map.get("goumaishuliang")+";";
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
ext.put("issh","��");
ext.put("iszf","��");
//jitihuan
String sql="update goumaijilu set issh='��' where goumairen='"+request.getSession().getAttribute("username")+"' and issh='��'";
	new CommDAO().commOper(sql); 

}
new CommDAO().insert(request,response,"shengchengdingdan",ext,true,false,"goumaijilu_list2.jsp"); 
%>

  <body >
 <form  action="shengchengdingdan_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ������ɶ���:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">�����ţ�</td><td><input name='dingdanhao' type='text' id='dingdanhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">��Ʒ��Ϣ��</td><td><textarea name='shangpinxinxi' cols='50' rows='5' id='shangpinxinxi'  onblur='checkform()' style='border:solid 1px #000000; color:#666666' ><%= shanpianxinxiz%></textarea>&nbsp;*<label id='clabelshangpinxinxi' /></td></tr>
		<tr><td  width="200">�ܽ�</td><td><input name='zongjine' type='text' id='zongjine' value='<%= zongjinez%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">�����ˣ�</td><td><input name='goumairen' type='text' id='goumairen' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">��ϵ�绰��</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabellianxidianhua' />�����ֻ���ʽ</td></tr>
		<tr><td  width="200">�������룺</td><td><input name='youzhengbianma' type='text' id='youzhengbianma' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">������ַ��</td><td><input name='fahuodizhi' type='text' id='fahuodizhi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
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
 
	var shangpinxinxiobj = document.getElementById("shangpinxinxi"); if(shangpinxinxiobj.value==""){document.getElementById("clabelshangpinxinxi").innerHTML="&nbsp;&nbsp;<font color=red>��������Ʒ��Ϣ</font>";return false;}else{document.getElementById("clabelshangpinxinxi").innerHTML="  "; } 
	var lianxidianhuaobj = document.getElementById("lianxidianhua"); if(lianxidianhuaobj.value!=""){ if(/^1[3|4|5|8][0-9]\d{4,8}$/.test(lianxidianhuaobj.value)){document.getElementById("clabellianxidianhua").innerHTML=""; }else{document.getElementById("clabellianxidianhua").innerHTML="&nbsp;&nbsp;<font color=red>�����ֻ���ʽ</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


