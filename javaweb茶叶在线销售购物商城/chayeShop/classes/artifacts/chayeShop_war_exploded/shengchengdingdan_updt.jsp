<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���ɶ���</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"shengchengdingdan",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"shengchengdingdan"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="shengchengdingdan_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸����ɶ���:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>�����ţ�</td><td><input name='dingdanhao' type='text' id='dingdanhao' value='<%= mmm.get("dingdanhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>��Ʒ��Ϣ��</td><td><textarea name='shangpinxinxi' cols='50' rows='5' id='shangpinxinxi' style='border:solid 1px #000000; color:#666666'><%=mmm.get("shangpinxinxi")%></textarea></td></tr>
     <tr><td>�ܽ�</td><td><input name='zongjine' type='text' id='zongjine' value='<%= mmm.get("zongjine")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�����ˣ�</td><td><input name='goumairen' type='text' id='goumairen' value='<%= mmm.get("goumairen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>��ϵ�绰��</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='<%= mmm.get("lianxidianhua")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�������룺</td><td><input name='youzhengbianma' type='text' id='youzhengbianma' value='<%= mmm.get("youzhengbianma")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>������ַ��</td><td><input name='fahuodizhi' type='text' id='fahuodizhi' size='50' value='<%=mmm.get("fahuodizhi")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


