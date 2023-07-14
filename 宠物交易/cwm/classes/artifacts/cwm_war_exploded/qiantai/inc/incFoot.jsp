<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
  		
        <TABLE id=footer cellSpacing=0 cellPadding=0 width="100%"   align=center border=0>

             <TR>
                  <TD align=middle><TABLE  cellSpacing=0 cellPadding=0   align=center border=0  style="height:150px;width:900px;background-repeat:no-repeat"  background="<%=path %>/img/bottom.jpg">
				<TR height="90">
					<TD align="center">
					 
					</TD>
				</TR>
		</TABLE></TD>
             </TR>
                          <TR>
                  <TD align=middle><DIV align=center>厂家直销热线:010-88888888&nbsp;&nbsp;&nbsp;版权所有:XXX宠物猫厂<br/><br/>建议使用IE10.0或以上版本浏览 <br>&nbsp;&nbsp;&nbsp;</DIV></TD>
             </TR>
        </TABLE>
        
  </body>
</html>
