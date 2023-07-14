<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<ul>
                    <li <% if(p==1) {out.print("class='cureent'");}%>><a href="index.jsp">网站首页</a></li>
                    <li <% if(p==2) {out.print("class='cureent'");}%>><a href="news.jsp?lb=最新动态">最新动态</a></li>
                    <li <% if(p==3) {out.print("class='cureent'");}%>><a href="userreg.jsp">用户注册</a></li>
                    <li <% if(p==4) {out.print("class='cureent'");}%>><a href="lyblist.jsp">在线留言</a></li>
                   
                    <li <% if(p==7) {out.print("class='cureent'");}%>><a href="product.jsp">产品产示</a></li>
                    <li <% if(p==8) {out.print("class='cureent'");}%>><a href="about.jsp">系统简介</a></li>
					  <li <% if(p==9) {out.print("class='cureent'");}%>><a href="login.jsp">后台管理</a></li>
                </ul>