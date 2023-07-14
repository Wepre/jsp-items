<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>招聘网</title>
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
-->
</style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1002" height="516" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1002" height="216" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" background="qtimages/3.jpg"><%@ include file="qtleft.jsp"%></td>
            <td valign="top" background="qtimages/2.jpg"><table id="__01" width="766" height="516" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="__01" width="766" height="276" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="766" height="47" background="qtimages/1_02_02_01_01.jpg"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="13%" height="17" align="right" valign="bottom"><a href="news.jsp?lb=站内新闻"><span class="STYLE2">站内新闻</span></a></td>
                        <td width="87%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="219" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="11" background="qtimages/1_02_02_01_02_01.jpg">&nbsp;</td>
                        <td width="728" height="219" bgcolor="#FFFFFF"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="503" valign="top"><table  cellspacing="0" cellpadding="0" width="100%" 
                  align="center" border="0" class="newsline">
                              <tbody>
                                <%
							String sql="";
							sql="select top 8 id,biaoti,addtime from xinwentongzhi where leibie='站内新闻' order by id desc";
							 String id="";
 String biaoti="";
 String addtime="";
 int i=0;
  ResultSet RS_result=connDbBean.executeQuery(sql);
							while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");
if(biaoti.length() >=32)
{
biaoti=biaoti.substring(0,32);
}
 addtime=RS_result.getString("addtime");
 
 
							
							%>
                                <tr>
                                  <td width="4%" height="25" align="center" ><img src="qtimages/1.jpg" ></td>
                                  <td width="76%" height="25"><a 
                        href="gg_detail.jsp?id=<%=id%>"><%=biaoti%></a> </td>
                                  <td width="20%" height="25" align="center"><SPAN 
                        style="FONT-SIZE: 9pt; COLOR: #b5a073; FONT-FAMILY: 宋体">[
                                    <%
out.print(addtime.substring(0,10));
%>
                                    ]</SPAN></td>
                                </tr>
                                <%
							}
							%>
                              </tbody>
                            </table></td>
                            <td width="225"><SCRIPT language=javascript>
var imagePath=new Array();
var linkPath=new Array();
var infoText=new Array();
var swf_width=225;
var swf_height=219;


<%
	String sqlbht;
	sqlbht="select top 5 id,biaoti,shouyetupian from xinwentongzhi where shouyetupian<>'' and shouyetupian<>'null' order by id desc";
	ResultSet RS_resultbht=connDbBean.executeQuery(sqlbht);
	String idbht="";
	String biaotibht="";
	String shouyetupianbht="";
	 while(RS_resultbht.next()){
 %>
imagePath.push("<%=RS_resultbht.getString("shouyetupian")%>")
infoText.push("<%=RS_resultbht.getString("biaoti")%>")
linkPath.push("gg_detail.jsp?id=<%=RS_resultbht.getString("id")%>")
 <%
 }
%>
		
var imagePath_str=""
var linkPath_str=""
var infoText_str=""
for(var i=0;i<5;i++){
imagePath_str+=imagePath[i]+"|";
linkPath_str+=linkPath[i]+"|";
infoText_str+=infoText[i]+"|";
}
document.writeln('<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http:\/\/fpdownload.macromedia.com\/pub\/shockwave\/cabs\/flash\/swflash.cab#version=7,0,0,0\" width=\"225\" height=\"219\" id=\"flash2\" align=\"middle\">');
document.writeln('<param name=\"allowScriptAccess\" value=\"sameDomain\" \/>');
document.writeln('<param name=\"movie\" value=\"qtimages/luzhupic3.swf\" \/>');
document.writeln('<param name=\"quality\" value=\"high\" \/>');
document.writeln('<param name=\"bgcolor\" value=\"#ffffff\" \/>');
document.writeln("<param name=\"FlashVars\" value=\"ppurl="+imagePath_str+"&pplink="+linkPath_str+"&ppfinfo="+infoText_str+"\" \/>");
document.writeln('<embed src=\"qtimages/luzhupic3.swf\" quality=\"high\" bgcolor=\"#ffffff\" width=\"225\" height=\"219\" name=\"luzhupic3\" align=\"middle\" allowScriptAccess=\"sameDomain\" type=\"application\/x-shockwave-flash\" pluginspage=\"http:\/\/www.macromedia.com\/go\/getflashplayer\" \/>');
document.writeln('<\/object>');
                        </SCRIPT>
                            </td>
                          </tr>
                        </table></td>
                        <td width="27" background="qtimages/1_02_02_01_02_03.jpg">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03.jpg" width="766" height="10" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
              <tr>
                <td><table id="__01" width="766" height="286" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="766" height="47" background="qtimages/4.jpg"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="13%" height="17" align="right" valign="bottom"><a href="news.jsp?lb=招聘公告"><span class="STYLE2">招聘公告</span></a></td>
                        <td width="44%">&nbsp;</td>
                        <td width="43%"><a href="news.jsp?lb=面试技巧"><span class="STYLE2">面试技巧</span></a></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="229" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="11" background="qtimages/1_02_02_01_02_01.jpg">&nbsp;</td>
                          <td width="728" height="229" bgcolor="#FFFFFF"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="364" valign="top"><table  cellspacing="0" cellpadding="0" width="98%" 
                  align="center" border="0" class="newsline">
                                <tbody>
                                  <%
							 sql="";
							sql="select top 9 id,biaoti,addtime from xinwentongzhi where leibie='招聘公告' order by id desc";
							  id="";
  biaoti="";
  addtime="";
  i=0;
   RS_result=connDbBean.executeQuery(sql);
							while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");
if(biaoti.length() >=27)
{
biaoti=biaoti.substring(0,27);
}
 addtime=RS_result.getString("addtime");
 
 
							
							%>
                                  <tr>
                                    <td width="6%" height="25" align="center" ><img src="qtimages/1.jpg" ></td>
                                    <td width="94%" height="25"><a 
                        href="gg_detail.jsp?id=<%=id%>"><%=biaoti%></a> </td>
                                  </tr>
                                  <%
							}
							%>
                                </tbody>
                              </table></td>
                              <td width="364" valign="top"><table  cellspacing="0" cellpadding="0" width="98%" 
                  align="center" border="0" class="newsline">
                                <tbody>
                                  <%
							 sql="";
							sql="select top 9 id,biaoti,addtime from xinwentongzhi where leibie='面试技巧' order by id desc";
							  id="";
  biaoti="";
  addtime="";
  i=0;
   RS_result=connDbBean.executeQuery(sql);
							while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");
if(biaoti.length() >=27)
{
biaoti=biaoti.substring(0,27);
}
 addtime=RS_result.getString("addtime");
 
 
							
							%>
                                  <tr>
                                    <td width="6%" height="25" align="center" ><img src="qtimages/1.jpg" ></td>
                                    <td width="94%" height="25"><a 
                        href="gg_detail.jsp?id=<%=id%>"><%=biaoti%></a> </td>
                                  </tr>
                                  <%
							}
							%>
                                </tbody>
                              </table></td>
                            </tr>
                          </table></td>
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