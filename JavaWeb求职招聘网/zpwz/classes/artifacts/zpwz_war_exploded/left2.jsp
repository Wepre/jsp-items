
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
    
    <title>��Ƹ��</title>
	<script src="images/prototype.js"></script>
<link rel="stylesheet" href="css.css">
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
.STYLE1 {color: #F33532}
body {
	background-color: #F7F7F7;
}
-->
</style>
</HEAD>
<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
 <table id="__01" width="219" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<img src="images/left_01.gif" width="219" height="45" alt=""></td>
	</tr>
	<tr>
		<td><table width="219"  border="0" cellpadding="0" cellspacing="0" background="images/left_02_01_02.gif" id="__01">
          <tr>
            <td><table id="__01" width="219" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="new Element.toggle('submenu1')" style="cursor:hand;">
                <td width="219" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE1"><strong>���������޸�</strong></span></td>
                    <td width="30%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td width="219" background="images/left_02_01_02.gif"  style="display:none"  id="submenu1">
				<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
      <td ><a href="yonghuzhuce_updt2.jsp" target="mainFrame">���������޸�</a></td>
    </tr>
	<tr>
      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
      <td ><a href="dx2.jsp" target="mainFrame">���˼�������</a></td>
    </tr>
	<tr>
      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
      <td ><a href="yonghuzhucedetail.jsp?id=<%=request.getSession().getAttribute("uid")%>" target="_blank">Ԥ������</a></td>
    </tr>
  </table>
				</td>
              </tr>
              <tr>
                <td><img src="images/left_02_01_03.gif" width="219" height="2" alt=""></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="219" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="new Element.toggle('submenu2')" style="cursor:hand;">
                <td width="219" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE1"><strong>ӦƸ��¼����</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="219" background="images/left_02_01_02.gif"  style="display:none"  id="submenu2"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="yingpinjilu_list2.jsp" target="mainFrame">ӦƸ��¼����</a></td>
                    </tr>
                   
                </table></td>
              </tr>
              <tr>
                <td><img src="images/left_02_01_03.gif" width="219" height="2" alt=""></td>
              </tr>
            </table></td>
          </tr>
          <!--<tr>
            <td><table id="__01" width="219" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="new Element.toggle('submenu3')" style="cursor:hand;">
                <td width="219" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE1"><strong>վ�����Ź���</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="219" background="images/left_02_01_02.gif"  style="display:none"  id="submenu3"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="xinwentongzhi_add.jsp?lb=վ������" target="mainFrame">վ���������</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="xinwentongzhi_list.jsp?lb=վ������" target="mainFrame">վ�����Ų�ѯ</a></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><img src="images/left_02_01_03.gif" width="219" height="2" alt=""></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="219" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="new Element.toggle('submenu4')" style="cursor:hand;">
                <td width="219" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE1"><strong>վ�����Ź���</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="219" background="images/left_02_01_02.gif"  style="display:none"  id="submenu4"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="xinwentongzhi_add.jsp?lb=վ������" target="mainFrame">վ���������</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="xinwentongzhi_list.jsp?lb=վ������" target="mainFrame">վ�����Ų�ѯ</a></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><img src="images/left_02_01_03.gif" width="219" height="2" alt=""></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="219" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="new Element.toggle('submenu5')" style="cursor:hand;">
                <td width="219" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE1"><strong>վ�����Ź���</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="219" background="images/left_02_01_02.gif"  style="display:none"  id="submenu5"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="xinwentongzhi_add.jsp?lb=վ������" target="mainFrame">վ���������</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="xinwentongzhi_list.jsp?lb=վ������" target="mainFrame">վ�����Ų�ѯ</a></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><img src="images/left_02_01_03.gif" width="219" height="2" alt=""></td>
              </tr>
            </table>
			</td>
          </tr>
          <tr>
            <td>
              <table id="__01" width="219" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="new Element.toggle('submenu6')" style="cursor:hand;">
                  <td width="219" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE1"><strong>վ�����Ź���</strong></span></td>
                        <td width="30%">&nbsp;</td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="219" background="images/left_02_01_02.gif"  style="display:none"  id="submenu6"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="xinwentongzhi_add.jsp?lb=վ������" target="mainFrame">վ���������</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="xinwentongzhi_list.jsp?lb=վ������" target="mainFrame">վ�����Ų�ѯ</a></td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td><img src="images/left_02_01_03.gif" width="219" height="2" alt=""></td>
                </tr>
              </table>
			  </td>
          </tr>
          <tr>
            <td>
              <table id="__01" width="219" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="new Element.toggle('submenu7')" style="cursor:hand;">
                  <td width="219" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE1"><strong>ϵͳ����</strong></span></td>
                        <td width="30%">&nbsp;</td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="219" background="images/left_02_01_02.gif"   id="submenu7"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="youqinglianjie_add.jsp" target="mainFrame">�����������</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="youqinglianjie_list.jsp" target="mainFrame">�������Ӳ�ѯ</a></td>
                      </tr>
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="liuyanban_list.jsp" target="mainFrame">���Թ���</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="dx.jsp?lb=ϵͳ���" target="mainFrame">ϵͳ�������</a></td>
                      </tr>
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="dx.jsp?lb=ϵͳ����" target="mainFrame">ϵͳ��������</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="databack.jsp" target="mainFrame">���ݱ���</a></td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td><img src="images/left_02_01_03.gif" width="219" height="2" alt=""></td>
                </tr>
              </table>
			  </td>
          </tr>-->
          <tr>
            <td>
              <table id="__01" width="219" border="0" cellpadding="0" cellspacing="0">
                <tr >
                  <td width="219" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE1"><strong>ϵͳ��Ȩ</strong></span></td>
                        <td width="30%">&nbsp;</td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="219" background="images/left_02_01_02.gif"   id="submenu7"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td colspan="2" align="center"><p><br>
                          ϵͳ���ߣ�xxxxxx</p>
                        <p>ָ����ʦ��xxxxx</p>
                        <p>����ѧУ��xxxxx</p></td>
                      </tr>
                      
                  </table></td>
                </tr>
                <tr>
                  <td><img src="images/left_02_01_03.gif" width="219" height="2" alt=""></td>
                </tr>
              </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td>
			<img src="images/left_03.gif" width="219" height="13" alt=""></td>
	</tr>
</table>
	  
				  </BODY></HTML>
