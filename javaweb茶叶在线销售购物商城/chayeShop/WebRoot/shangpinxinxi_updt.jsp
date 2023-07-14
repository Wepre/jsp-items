<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>商品信息</title>
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
new CommDAO().update(request,response,"shangpinxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"shangpinxinxi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="shangpinxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改商品信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>商品编号：</td><td><input name='shangpinbianhao' type='text' id='shangpinbianhao' value='<%= mmm.get("shangpinbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>商品名称：</td><td><input name='shangpinmingcheng' type='text' id='shangpinmingcheng' size='50' value='<%=mmm.get("shangpinmingcheng")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>商品类别：</td><td><%=Info.getselect("shangpinleibie","shangpinleibie","shangpinleibie")%></td></tr><script language="javascript">document.form1.shangpinleibie.value='<%=mmm.get("shangpinleibie")%>';</script>
     <tr><td>销售价格：</td><td><input name='xiaoshoujiage' type='text' id='xiaoshoujiage' value='<%= mmm.get("xiaoshoujiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>库存：</td><td><input name='kucun' type='text' id='kucun' value='<%= mmm.get("kucun")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= mmm.get("zhaopian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>商品详情：</td><td><textarea name='shangpinxiangqing' cols='50' rows='5' id='shangpinxiangqing' style='border:solid 1px #000000; color:#666666'><%=mmm.get("shangpinxiangqing")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


