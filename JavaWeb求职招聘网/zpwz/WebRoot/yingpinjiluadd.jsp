<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  if ( request.getSession().getAttribute("username")==null || request.getSession().getAttribute("username").equals(""))
{
	out.print("<script>javascript:alert('对不起，请您先登陆！');location.href='index.jsp';</script>");
  }
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>应聘记录</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {color: #D92B8A}
body {
	background-color: #D62E85;
}
.STYLE2 {
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE8 {color: #185838;
	font-weight: bold;
}
-->
</style>
</head>
<script language="javascript" src="js/Calendar.js"></script>
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
	<script language="javascript">
function check()
{
	if(document.form1.gongsibianhao.value==""){alert("请输入公司编号");document.form1.gongsibianhao.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("请输入公司名称");document.form1.gongsimingcheng.focus();return false;}if(document.form1.gangweimingcheng.value==""){alert("请输入岗位名称");document.form1.gangweimingcheng.focus();return false;}if(document.form1.xinzidaiyu.value==""){alert("请输入薪资待遇");document.form1.xinzidaiyu.focus();return false;}if(document.form1.yingpinren.value==""){alert("请输入应聘人");document.form1.yingpinren.focus();return false;}if(document.form1.gongsibianhao.value==""){alert("请输入公司编号");document.form1.gongsibianhao.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("请输入公司名称");document.form1.gongsimingcheng.focus();return false;}if(document.form1.gangweimingcheng.value==""){alert("请输入岗位名称");document.form1.gangweimingcheng.focus();return false;}if(document.form1.xinzidaiyu.value==""){alert("请输入薪资待遇");document.form1.xinzidaiyu.focus();return false;}if(document.form1.yingpinren.value==""){alert("请输入应聘人");document.form1.yingpinren.focus();return false;}
}
function gow()
{
	document.location.href="yingpinjilu_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1002" height="1203" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1002" height="816" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" background="qtimages/3.jpg"><%@ include file="qtleft.jsp"%></td>
            <td valign="top" background="qtimages/2.jpg"><table id="__01" width="766" height="816" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td valign="top"><table id="__01" width="766" height="254" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="766" height="47" background="qtimages/1_02_02_01_01.jpg"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="13%" height="17" align="right" valign="bottom"><span class="STYLE2">应聘记录</span></td>
                        <td width="87%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="197" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="11" background="qtimages/1_02_02_01_02_01.jpg">&nbsp;</td>
                          <td width="728" height="760" valign="top" bgcolor="#FFFFFF">
						  
						  
						   <%
  String sql;
  ResultSet RS_result;
  String id=request.getParameter("id");
  sql="select * from gangweixinxi where id="+id;
  String gongsibianhao="";String gongsimingcheng="";String gangweimingcheng="";String xinzidaiyu="";
  RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");gangweimingcheng=RS_result.getString("gangweimingcheng");xinzidaiyu=RS_result.getString("xinzidaiyu");
  }
   %>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"><form name="form1" id="form1" method="post" action="yingpinjiluadd_post.jsp">
       <tr><td>公司编号：</td><td><input name='gongsibianhao' type='text' id='gongsibianhao' value='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.gongsibianhao.value='<%=gongsibianhao%>';</script><tr><td>公司名称：</td><td><input name='gongsimingcheng' type='text' id='gongsimingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.gongsimingcheng.value='<%=gongsimingcheng%>';</script><tr><td>岗位名称：</td><td><input name='gangweimingcheng' type='text' id='gangweimingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.gangweimingcheng.value='<%=gangweimingcheng%>';</script><tr><td>薪资待遇：</td><td><input name='xinzidaiyu' type='text' id='xinzidaiyu' value='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.xinzidaiyu.value='<%=xinzidaiyu%>';</script><tr><td>应聘人：</td><td><input name='yingpinren' type='text' id='yingpinren' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' />&nbsp;*</td></tr><tr style='display:none'><td>公司回复：</td><td><textarea name='gongsihuifu' cols='50' rows='5' id='gongsihuifu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</form>
  </table>
  
						  
						  </td>
                          <td width="27" background="qtimages/1_02_02_01_02_03.jpg">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03.jpg" width="766" height="10" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
</body>
</html>
