
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=gangweixinxi.xls");
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ģ������</title>
    

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>����ģ�������б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��˾���</td><td bgcolor='#CCFFFF'>��˾����</td><td bgcolor='#CCFFFF'>��λ����</td><td bgcolor='#CCFFFF'>��Ƹ����</td><td bgcolor='#CCFFFF'>�Ա�Ҫ��</td><td bgcolor='#CCFFFF'>ѧ��Ҫ��</td><td bgcolor='#CCFFFF'>н�ʴ���</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <%
 
   sql="";
  sql="select * from gangweixinxi  order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gongsibianhao="";String gongsimingcheng="";String gangweimingcheng="";String zhaopinrenshu="";String xingbieyaoqiu="";String xueliyaoqiu="";String xinzidaiyu="";String jianjie="";
 String addtime="";
 int i=0;

 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");gangweimingcheng=RS_result.getString("gangweimingcheng");zhaopinrenshu=RS_result.getString("zhaopinrenshu");xingbieyaoqiu=RS_result.getString("xingbieyaoqiu");xueliyaoqiu=RS_result.getString("xueliyaoqiu");xinzidaiyu=RS_result.getString("xinzidaiyu");jianjie=RS_result.getString("jianjie");
 addtime=RS_result.getString("addtime");
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=gongsibianhao %></td><td><%=gongsimingcheng %></td><td><%=gangweimingcheng %></td><td><%=zhaopinrenshu %></td><td><%=xingbieyaoqiu %></td><td><%=xueliyaoqiu %></td><td><%=xinzidaiyu %></td>
    <td width="138" align="center"><%=addtime %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

