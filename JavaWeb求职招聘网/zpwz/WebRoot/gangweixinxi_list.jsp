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
    <title>��λ��Ϣ</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>���и�λ��Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:&nbsp;&nbsp;��˾���ƣ�<input name="gongsimingcheng" type="text" id="gongsimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;��λ���ƣ�<input name="gangweimingcheng" type="text" id="gangweimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ѧ��Ҫ��
   <select name='xueliyaoqiu' id='xueliyaoqiu'>
     <option value="">����</option>
     <option value="˶ʿ">˶ʿ</option>
     <option value="����">����</option>
     <option value="��ר">��ר</option>
     <option value="����">����</option>
   </select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='gangweixinxi_listxls.jsp';" />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��˾���</td><td bgcolor='#CCFFFF'>��˾����</td><td bgcolor='#CCFFFF'>��λ����</td><td bgcolor='#CCFFFF'>��Ƹ����</td><td bgcolor='#CCFFFF'>�Ա�Ҫ��</td><td bgcolor='#CCFFFF'>ѧ��Ҫ��</td><td bgcolor='#CCFFFF'>н�ʴ���</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
   int curpage=1;//��ǰҳ
				int page_record=10;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from gangweixinxi";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//��ȡ���ݵ�ֵ����Ҫ��ʾ��ҳ
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
   sql="";
  
if ((curpage-1)*page_record==0 )
{
  sql="select top 10 * from gangweixinxi where 1=1";
}
else
{
  sql="select top "+page_record+" * from gangweixinxi where id not in (select top "+((curpage-1)*page_record)+" id from gangweixinxi order by id desc) ";
}

  
if(request.getParameter("gongsimingcheng")=="" ||request.getParameter("gongsimingcheng")==null ){}else{sql=sql+" and gongsimingcheng like '%"+new String(request.getParameter("gongsimingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("gangweimingcheng")=="" ||request.getParameter("gangweimingcheng")==null ){}else{sql=sql+" and gangweimingcheng like '%"+new String(request.getParameter("gangweimingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("xueliyaoqiu")=="����" ||request.getParameter("xueliyaoqiu")==null ){}else{sql=sql+" and xueliyaoqiu like '%"+new String(request.getParameter("xueliyaoqiu").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gongsibianhao="";String gongsimingcheng="";String gangweimingcheng="";String zhaopinrenshu="";String xingbieyaoqiu="";String xueliyaoqiu="";String xinzidaiyu="";String jianjie="";
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");gangweimingcheng=RS_result.getString("gangweimingcheng");zhaopinrenshu=RS_result.getString("zhaopinrenshu");xingbieyaoqiu=RS_result.getString("xingbieyaoqiu");xueliyaoqiu=RS_result.getString("xueliyaoqiu");xinzidaiyu=RS_result.getString("xinzidaiyu");jianjie=RS_result.getString("jianjie");
 addtime=RS_result.getString("addtime");
 //zoxngxetxoxngjxvi
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=gongsibianhao %></td><td><%=gongsimingcheng %></td><td><%=gangweimingcheng %></td><td><%=zhaopinrenshu %></td><td><%=xingbieyaoqiu %></td><td><%=xueliyaoqiu %></td><td><%=xinzidaiyu %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="90" align="center"><a href="gangweixinxi_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=gangweixinxi" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="gangweixinxidetail.jsp?id=<%=id%>" target="_blank">��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table>
<%//yougongzitongji%>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="gangweixinxi_list.jsp?page=1">��ҳ</a>��<a href="gangweixinxi_list.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="gangweixinxi_list.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="gangweixinxi_list.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>
