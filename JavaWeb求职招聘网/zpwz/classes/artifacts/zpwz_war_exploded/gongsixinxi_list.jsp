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
    <title>��˾��Ϣ</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>���й�˾��Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:&nbsp;&nbsp;��˾��ţ�<input name="gongsibianhao" type="text" id="gongsibianhao" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;��˾���ƣ�<input name="gongsimingcheng" type="text" id="gongsimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;�绰��<input name="dianhua" type="text" id="dianhua" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;��ַ��<input name="dizhi" type="text" id="dizhi" style='border:solid 1px #000000; color:#666666' size="12" />  ���
   <select name='leibie' id='leibie'>
     <option value="">����</option>
	 <option value="IT��">IT��</option>
     <option value="��ʳ��">��ʳ��</option>
     <option value="������">������</option>
     <option value="������">������</option>
   </select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='gongsixinxi_listxls.jsp';" />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��˾���</td><td bgcolor='#CCFFFF'>��˾����</td><td bgcolor='#CCFFFF'>������</td><td bgcolor='#CCFFFF'>�绰</td><td bgcolor='#CCFFFF'>��ַ</td><td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>ע���ʽ�</td><td bgcolor='#CCFFFF'>��˾��ģ</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
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
				String fysql="select count(id) as ss from gongsixinxi";
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
  sql="select top 10 * from gongsixinxi where 1=1";
}
else
{
  sql="select top "+page_record+" * from gongsixinxi where id not in (select top "+((curpage-1)*page_record)+" id from gongsixinxi order by id desc) ";
}

  
if(request.getParameter("gongsibianhao")=="" ||request.getParameter("gongsibianhao")==null ){}else{sql=sql+" and gongsibianhao like '%"+new String(request.getParameter("gongsibianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("gongsimingcheng")=="" ||request.getParameter("gongsimingcheng")==null ){}else{sql=sql+" and gongsimingcheng like '%"+new String(request.getParameter("gongsimingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+new String(request.getParameter("dianhua").getBytes("8859_1"))+"%'";}
if(request.getParameter("dizhi")=="" ||request.getParameter("dizhi")==null ){}else{sql=sql+" and dizhi like '%"+new String(request.getParameter("dizhi").getBytes("8859_1"))+"%'";}
if(request.getParameter("leibie")=="����" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+new String(request.getParameter("leibie").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gongsibianhao="";String gongsimingcheng="";String fuzeren="";String dianhua="";String dizhi="";String leibie="";String zhucezijin="";String gongsiguimo="";String mima="";String youxiang="";String jianjie="";String issh="";
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
gongsibianhao=RS_result.getString("gongsibianhao");gongsimingcheng=RS_result.getString("gongsimingcheng");fuzeren=RS_result.getString("fuzeren");dianhua=RS_result.getString("dianhua");dizhi=RS_result.getString("dizhi");leibie=RS_result.getString("leibie");zhucezijin=RS_result.getString("zhucezijin");gongsiguimo=RS_result.getString("gongsiguimo");mima=RS_result.getString("mima");youxiang=RS_result.getString("youxiang");jianjie=RS_result.getString("jianjie");issh=RS_result.getString("issh");
 addtime=RS_result.getString("addtime");
 //zoxngxetxoxngjxvi
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=gongsibianhao %></td><td><%=gongsimingcheng %></td><td><%=fuzeren %></td><td><%=dianhua %></td><td><%=dizhi %></td><td><%=leibie %></td><td><%=zhucezijin %></td><td><%=gongsiguimo %></td><td><%=mima %></td><td><%=youxiang %></td><td width='80' align='center'><a href="sh.jsp?id=<%=id%>&yuan=<%=issh%>&tablename=gongsixinxi" onClick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=issh%></a></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="90" align="center"><a href="gongsixinxi_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=gongsixinxi" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="gongsixinxidetail.jsp?id=<%=id%>" target="_blank">��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table>
<%//yougongzitongji%>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="gongsixinxi_list.jsp?page=1">��ҳ</a>��<a href="gongsixinxi_list.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="gongsixinxi_list.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="gongsixinxi_list.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>
