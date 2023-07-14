
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>

<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>应聘记录</title><script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.gongsibianhao.value==""){alert("请输入公司编号");document.form1.gongsibianhao.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("请输入公司名称");document.form1.gongsimingcheng.focus();return false;}if(document.form1.gangweimingcheng.value==""){alert("请输入岗位名称");document.form1.gangweimingcheng.focus();return false;}if(document.form1.xinzidaiyu.value==""){alert("请输入薪资待遇");document.form1.xinzidaiyu.focus();return false;}if(document.form1.yingpinren.value==""){alert("请输入应聘人");document.form1.yingpinren.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="yingpinjilu_updt_postlb.jsp?id=<%=id %>">
  设置应聘记录:
  <br><br>
  <%
  String sql="select * from yingpinjilu where id="+id;
  String gongsibianhao="";String gongsimingcheng="";String gangweimingcheng="";String xinzidaiyu="";String yingpinren="";String gongsihuifu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");gangweimingcheng=RS_result.getString("gangweimingcheng");xinzidaiyu=RS_result.getString("xinzidaiyu");yingpinren=RS_result.getString("yingpinren");gongsihuifu=RS_result.getString("gongsihuifu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr style='display:none'><td>公司编号：</td><td><input name='gongsibianhao' type='text' id='gongsibianhao' value='<%= gongsibianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr style='display:none'><td>公司名称：</td><td><input name='gongsimingcheng' type='text' id='gongsimingcheng' size='50' value='<%=gongsimingcheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr style='display:none'><td>岗位名称：</td><td><input name='gangweimingcheng' type='text' id='gangweimingcheng' size='50' value='<%=gangweimingcheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr style='display:none'><td>薪资待遇：</td><td><input name='xinzidaiyu' type='text' id='xinzidaiyu' value='<%= xinzidaiyu%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr style='display:none'><td>应聘人：</td><td><input name='yingpinren' type='text' id='yingpinren' value='<%= yingpinren%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>公司回复：</td><td><textarea name='gongsihuifu' cols='50' rows='5' id='gongsihuifu' style='border:solid 1px #000000; color:#666666'><%=gongsihuifu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


