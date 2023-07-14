<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<div class="search">
            	<form action="news.jsp" method="post" name="formsearch" id="formsearch" >
                  <input type="text" id="keyword" value="" placeholder="¹Ø¼ü´Ê"  name="keyword">
                  <input type="submit" value="" id="submit" class="png">
               </form>
            </div>