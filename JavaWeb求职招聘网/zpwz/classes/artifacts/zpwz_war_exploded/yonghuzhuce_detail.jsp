
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
    
    <title>用户注册详细</title><script language="javascript" src="js/Calendar.js"></script>
	
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	fewgidsoidfjdkgds
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>

  用户注册详细:
  <br><br>
  <%
  String sql="select * from yonghuzhuce where id="+id;
  String yonghuming="";String mima="";String xingming="";String xingbie="";String chushengnianyue="";String QQ="";String youxiang="";String dianhua="";String shenfenzheng="";String touxiang="";String dizhi="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  yonghuming=RS_result.getString("yonghuming");mima=RS_result.getString("mima");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");chushengnianyue=RS_result.getString("chushengnianyue");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");shenfenzheng=RS_result.getString("shenfenzheng");touxiang=RS_result.getString("touxiang");dizhi=RS_result.getString("dizhi");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="69%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <td width='16%' height="30">用户名：</td><td width='34%' height="30"><%=yonghuming%></td><td width="50%" colspan="2" rowspan="9" align="center"><a href="<%=touxiang%>" target="_blank"><img src="<%=touxiang%>" width="246" height="268" border="0"></a></td></tr>
     <tr>
       <td height="30">密码：</td>
       <td height="30"><%=mima%></td>
     </tr>
     <tr><td width='16%' height="30">姓名：</td><td width='34%' height="30"><%=xingming%></td></tr>
     <tr>
       <td height="30">性别：</td>
       <td height="30"><%=xingbie%></td>
     </tr>
     <tr><td width='16%' height="30">出生年月：</td><td width='34%' height="30"><%=chushengnianyue%></td></tr>
     <tr>
       <td height="30">QQ：</td>
       <td height="30"><%=QQ%></td>
     </tr>
     <tr><td width='16%' height="30">邮箱：</td><td width='34%' height="30"><%=youxiang%></td></tr>
     <tr>
       <td height="30">电话：</td>
       <td height="30"><%=dianhua%></td>
     </tr>
     <tr><td width='16%' height="30">身份证：</td><td width='34%' height="30"><%=shenfenzheng%></td>
     </tr><tr><td width='16%' height="30">地址：</td><td height="30" colspan="3"><%=dizhi%></td>     
     <tr>
       <td height="95" align="left">备注：</td>
       <td colspan="3" align="left"><%=beizhu%></td>
     </tr>
     <tr>
      <td colspan="4" align="center"><input type="button" name="Submit" value="返回" onClick="javascript:history.back()" /> 
        <input type="button" name="Submit2" value="打印" onClick="javascript:window.print()" /></td>
    </tr>
  </table>

  </body>
</html>


