<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<ul>
                    <li <% if(p==1) {out.print("class='cureent'");}%>><a href="index.jsp">��վ��ҳ</a></li>
                    <li <% if(p==2) {out.print("class='cureent'");}%>><a href="news.jsp?lb=���¶�̬">���¶�̬</a></li>
                    <li <% if(p==3) {out.print("class='cureent'");}%>><a href="userreg.jsp">�û�ע��</a></li>
                    <li <% if(p==4) {out.print("class='cureent'");}%>><a href="lyblist.jsp">��������</a></li>
                   
                    <li <% if(p==7) {out.print("class='cureent'");}%>><a href="product.jsp">��Ʒ��ʾ</a></li>
                    <li <% if(p==8) {out.print("class='cureent'");}%>><a href="about.jsp">ϵͳ���</a></li>
					  <li <% if(p==9) {out.print("class='cureent'");}%>><a href="login.jsp">��̨����</a></li>
                </ul>