<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312" session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>


<META content="MSHTML 6.00.2800.1106" name=GENERATOR>
<script language="javascript"> 
function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checkuserlog()
{
	if(document.formlog.username.value=="" || document.formlog.pwd1.value=="" || document.formlog.rand.value=="")
	{
		alert('请输入完整');
		return false;
	}
}

function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
</script>
</HEAD>
<table id="__01" width="236" height="516" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="__01" width="236" height="211" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="236" height="50" background="qtimages/1_02_01_01_01.jpg"><table width="100%" height="20" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="48%" height="20" align="right"><span class="STYLE2">系统公告</span></td>
                        <td width="52%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="236" height="147" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="qtimages/1_02_01_01_02_01.jpg" width="24" height="147" alt=""></td>
                        <td width="200" height="147" background="qtimages/1_02_01_01_02_02.jpg"><marquee border="0" direction="up" height="100%" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50">
                          <TABLE width="100%" height="100%" >
                      <TR><TD ><%
			String sqlxtgg="select * from dx where leibie='系统公告'";
			 ResultSet RS_resultxtgg=connDbBean.executeQuery(sqlxtgg);
			 while(RS_resultxtgg.next())
			 {
			 out.print(RS_resultxtgg.getString("content"));
			 }
			%></TD></TR></TABLE></marquee></td>
                        <td><img src="qtimages/1_02_01_01_02_03.jpg" width="12" height="147" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_01_01_03.jpg" width="236" height="14" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="236" height="197" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="236" height="50" background="qtimages/1_02_01_02_01.jpg"><table width="100%" height="20" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="48%" height="20" align="right"><span class="STYLE2">用户登陆</span></td>
                        <td width="52%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="236" height="132" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="23" background="qtimages/1_02_01_02_02_01.jpg">&nbsp;</td>
                        <td width="201" height="132" background="qtimages/1_02_01_01_02_02.jpg"><%

	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
	{
	 %>
                          <table width="91%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#EFCE7B" style="border-collapse:collapse" >
                            <form name="formlog" method="post" action="userlog_post.jsp">
                              <tr>
                                <td width="28%" height="30">用户名</td>
                                <td width="72%" height="30"><input name="username" type="text" id="username" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 80px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" size="12"></td>
                              </tr>
                              <tr>
                                <td height="30">密码</td>
                                <td height="30"><input name="pwd1" type="password" id="pwd1" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 80px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></td>
                              </tr>
                              <tr >
                                <td height="30">权限</td>
                                <td height="30"><select name="cx" id="cx" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px">
                                    <option value="公司">公司</option>
									<option value="学生">学生</option>
                                  </select>
                                </td>
                              </tr>
                              <tr>
                                <td height="30">验证码</td>
                                <td height="30"><input type="text" name="rand" id="rand" size="5">
                                  <a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"></a></td>
                              </tr>
                              <tr>
                                <td height="30">&nbsp;</td>
                                <td height="30"><input type="submit" name="Submit" value="登陆" style=" height:19px; border:solid 1px #000000; color:#666666" onClick="return checkuserlog()">
                                    <input type="reset" name="Submit2" value="重置" style=" height:19px; border:solid 1px #000000; color:#666666"></td>
                              </tr>
                            </form>
                          </table>
                          <%
					}
					else
					{
					%>
                          <table width="90%" height="82%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="31%" height="30">用户名</td>
                              <td width="69%" height="30"><%=request.getSession().getAttribute("username")%></td>
                            </tr>
                            <tr>
                              <td height="30">权限</td>
                              <td height="30"><%=request.getSession().getAttribute("cx")%> </td>
                            </tr>
                            <tr>
                              <td height="30" colspan="2" align="center"><input type="button" name="Submit3" value="退出" onClick="javascript:location.href='logout.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                  <input type="button" name="Submit32" value="个人后台" onClick="javascript:location.href='main.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                              </td>
                            </tr>
                          </table>
                        <%
					}
					%></td>
                        <td width="12" background="qtimages/1_02_01_02_02_03.jpg">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_01_02_03.jpg" width="236" height="15" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
                <td><table id="__01" width="236" height="195" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="236" height="50" background="qtimages/1_02_01_04_01.jpg"><table width="100%" height="20" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="48%" height="20" align="right"><span class="STYLE2">友情连接</span></td>
                        <td width="52%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="236" height="131" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="qtimages/1_02_01_04_02_01.jpg" width="24" height="131" alt=""></td>
                        <td width="198" height="131" background="qtimages/1_02_01_01_02_02.jpg"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                          <%
        String sql2="";
  sql2="select top 4 * from youqinglianjie where 1=1";
  sql2=sql2+" order by id desc";
 ResultSet RS_result2=connDbBean.executeQuery(sql2);
 String wangzhanmingcheng="";String wangzhi="";
 //int i=0;
 while(RS_result2.next()){
 //i=i+1;
wangzhanmingcheng=RS_result2.getString("wangzhanmingcheng");wangzhi=RS_result2.getString("wangzhi");

         %>
                          <tr valign="middle">
                            <td width="12%" height="30" align="center" class="STYLE2"><img src="qtimages/1.jpg" ></td>
                            <td width="18%" height="30" align="left"><a href="<%= wangzhi%>" class="b" target="_blank"><%= wangzhanmingcheng%></a></td>
                            <td width="70%" align="left"><a href="<%= wangzhi%>" class="b" target="_blank"><%= wangzhi%></a></td>
                          </tr>
                          <%} %>
                        </table></td>
                        <td><img src="qtimages/1_02_01_04_02_03.jpg" width="14" height="131" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_01_04_03.jpg" width="236" height="14" alt=""></td>
                  </tr>
                </table></td>
              </tr>
            </table>