
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
    
    <title>公司信息</title><script language="javascript" src="js/Calendar.js"></script>
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
	if(document.form1.gongsibianhao.value==""){alert("请输入公司编号");document.form1.gongsibianhao.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("请输入公司名称");document.form1.gongsimingcheng.focus();return false;}if(document.form1.dianhua.value==""){alert("请输入电话");document.form1.dianhua.focus();return false;}if(document.form1.dizhi.value==""){alert("请输入地址");document.form1.dizhi.focus();return false;}if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}if(document.form1.youxiang.value==""){alert("请输入邮箱");document.form1.youxiang.focus();return false;}
}
</script>
  <body >

  <form name="form1" id="form1" method="post" action="gongsixinxi_updt_post2.jsp">
  修改公司信息:
  <br><br>
  <%
  String sql="select * from gongsixinxi where gongsibianhao='"+request.getSession().getAttribute("username")+"'";
  String gongsibianhao="";String gongsimingcheng="";String fuzeren="";String dianhua="";String dizhi="";String leibie="";String zhucezijin="";String gongsiguimo="";String mima="";String youxiang="";String jianjie="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");fuzeren=RS_result.getString("fuzeren");dianhua=RS_result.getString("dianhua");dizhi=RS_result.getString("dizhi");leibie=RS_result.getString("leibie");zhucezijin=RS_result.getString("zhucezijin");gongsiguimo=RS_result.getString("gongsiguimo");mima=RS_result.getString("mima");youxiang=RS_result.getString("youxiang");jianjie=RS_result.getString("jianjie");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>公司编号：</td><td><input name='gongsibianhao' type='text' id='gongsibianhao' value='<%= gongsibianhao%>' readonly='readonly' style='border:solid 1px #000000; color:#666666' /> * 此项不得修改</td></tr><tr><td>公司名称：</td><td><input name='gongsimingcheng' type='text' id='gongsimingcheng' size='50' value='<%=gongsimingcheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>负责人：</td><td><input name='fuzeren' type='text' id='fuzeren' value='<%= fuzeren%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='<%=dizhi%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>类别：</td><td><select name='leibie' id='leibie'>
       <option value="IT类">IT类</option>
       <option value="饮食类">饮食类</option>
       <option value="生产类">生产类</option>
       <option value="服务类">服务类</option>
     </select></td></tr><script language="javascript">document.form1.leibie.value='<%=leibie%>';</script><tr><td>注册资金：</td><td><input name='zhucezijin' type='text' id='zhucezijin' value='<%= zhucezijin%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>公司规模：</td><td><input name='gongsiguimo' type='text' id='gongsiguimo' size='50' value='<%=gongsiguimo%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mima%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='<%= youxiang%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>简介：</td><td><textarea name="jianjie" style="display:none"><%=jianjie%></textarea><iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=jianjie&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


