<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<div class="header_wrapper">
  <div class="wrapper">
        <div class="header clearfix">
			
            <div class="logo">
                <a href="index.jsp"><img src="qtimages/logo.png" class="png" width="67" height="97" alt="" /></a>
            </div>
			<div>
			  <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
				
                    <table height="30" border="0" cellpadding="0" cellspacing="0">
                      <form action="jspmcyzxjyptdzkfB110?ac=login&amp;a=a" method="post" name="f11" id="f11" style="display: inline">
                        <tr>
                          <td  height="30" align="left" >�û���
                            <input name="username" type="text" id="username" size="10" style=" height:19px; border:solid 1px #000000; color:#666666">
                            ����
                            <input name="pwd1" type="password" id="pwd1" size="10" style=" height:19px; border:solid 1px #000000; color:#666666">
                           
                            <select name="cx" id="cx" style="width:100px; height:20px; border:solid 1px #000000; color:#666666" >
                              <option value="ע���û�">ע���û�</option>
                            </select> 
                            ��֤��
                          <input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" /></td>
                          <td align="left" style="padding-left:3px; padding-right:3px;"><a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /> </a></td>
                          <td align="left"><input type="submit" name="Submit3" value="��½" style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" onclick="return checklog();" />
                            <input type="button" name="Submit32" value="ע��" style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" onclick="javascript:location.href='userreg.jsp';" />
                            <input type="button" name="Submit3" value="�һ�����" onclick="javascript:location.href='zmm.jsp';" style=" border:solid 1px #000000; color:#666666;width:60px; height:20px; display:none" /></td>
                        </tr>
                      </form>
                  </table>
					  <%}else{ %>
				 <table height="30" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="30" align="left" valign="middle">�û���:<%=request.getSession().getAttribute("username")%>������Ȩ��:
                         <%=request.getSession().getAttribute("cx")%>
                            <input type="button" name="Submit" value="�˳�" onClick="location.href='logout.jsp';"  style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;">
                            <input type="button" name="Submit2" value="���˺�̨" onClick="location.href='main.jsp';"  style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;"></td>
                      </tr>
					  </table>
                  <%} %>
			</div>
            <div class="title"><div style="text-shadow:#CCCCCC 3px 0 0,#33CC33 0 1px 0,#33CC33 1px 0 0,#33CC33 0 -1px 0; font-size:22px;" >
                    ��Ҷ����ϵͳ 
                </div></div>
            <div class="tel">TEL: 13888888888</div>
            
    	</div>
</div>
</div>

<script type="text/javascript">
          
           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("����������");
		return false;
	}
}
           
                          </script>
						  	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;
 </script>