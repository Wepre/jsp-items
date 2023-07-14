<%@ page language="java" import="java.util.*" pageEncoding="gb2312" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>
    <title>茶叶销售系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <style type="text/css">
        <!--
        body {
            background-image: url(images/hsgbg.gif);
        }

        .STYLE3 {
            color: #528311;
            font-size: 12px;
        }

        .STYLE5 {
            color: #72AC27;
            font-size: 26pt;
        }

        .STYLE9 {
            color: #FFFFFF;
            font-size: 12px
        }

        -->
    </style>
</head>
<script type="text/javascript">
    <%
   String error = (String)request.getAttribute("error");
   if(error!=null)
   {
    %>
    alert("用户名或密码错误");
    <%}%>

    <%
  String random = (String)request.getAttribute("random");
  if(random!=null)
  {
   %>
    alert("验证码错误");
    <%}%>

    popheight = 39;

    function check() {
        if (document.form1.username.value == "" || document.form1.pwd.value == "" || document.form1.pagerandom.value == "") {
            alert('请输入完整');
            return false;
        }
    }

    function loadimage() {
        document.getElementById("randImage").src = "image.jsp?" + Math.random();
    }


</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="800" height="630" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td height="134" valign="bottom"><p>&nbsp;</p></td>
    </tr>
    <tr>
        <td height="496" valign="top">
            <table width="800" height="496" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="246" background="images/hsgbg2.gif">
                        <table width="74%" height="51" border="0" align="center">
                            <tr>
                                <td>
                                    <div style="font-family:宋体; color:#FFFFFF;  WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 32px; margin-top:5pt">

                                        <div align="right">茶叶销售系统</div>

                                    </div>
                                </td>
                            </tr>
                        </table>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <table width="100%" height="112" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="48%">&nbsp;</td>
                                <td width="52%">
                                    <form action="jspmcyzxjyptdzkfB110?ac=adminlogin&a=a" method="post" name="form1"
                                          style="display: inline">
                                        <table width="205" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="44" height="30"><span class="STYLE9">用户:</span></td>
                                                <td height="30" colspan="2"><input name="username" type="text"
                                                                                   id="username"
                                                                                   style="width:100px; height:16px; border:solid 1px #000000; color:#666666">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="30"><span class="STYLE9">密码:</span></td>
                                                <td height="30" colspan="2"><input name="pwd" type="password" id="pwd"
                                                                                   style="width:100px; height:16px; border:solid 1px #000000; color:#666666">
                                                </td>
                                            </tr>
                                            <tr style="display:none">
                                                <td height="30"><span class="STYLE9">权限:</span></td>
                                                <td height="30" colspan="2"><select name="cx" id="cx">
                                                    <option value="管理员">管理员</option>
                                                </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="30"><span class="STYLE9">验证码:</span></td>
                                                <td width="59" height="30"><input name="pagerandom" type="text"
                                                                                  id="pagerandom"
                                                                                  style=" height:20px; border:solid 1px #000000; color:#666666; width:50px"/>
                                                <td width="102"><a href="javascript:loadimage();"><img alt="看不清请点我！"
                                                                                                       name="randImage"
                                                                                                       id="randImage"
                                                                                                       src="image.jsp"
                                                                                                       width="60"
                                                                                                       height="20"
                                                                                                       border="1"
                                                                                                       align="absmiddle">
                                                </a></td>
                                            </tr>
                                            <tr>
                                                <td height="30" colspan="3"><input type="submit" name="Submit"
                                                                                   value="登陆" onClick="return check();"
                                                                                   style="background:url(images/the_formbtn.gif) no-repeat;color:#000000;width:80px;height: 24px; border:0px;line-height:24px; font-size:12px;margin-right: 5px; cursor:pointer">
                                                    <input type="reset" name="Submit2" value="重置"
                                                           style="background:url(images/the_formbtn.gif) no-repeat;color:#000000;width:80px;height: 24px; border:0px;line-height:24px; font-size:12px;margin-right: 5px; cursor:pointer">
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>