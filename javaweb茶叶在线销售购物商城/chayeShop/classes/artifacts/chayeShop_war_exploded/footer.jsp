<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<div class="footer_wrapper">
	<div class="wrapper">
    	<div class="footer_con clearfix">
        	<div class="footer_manu_con clearfix">
            <div class="footer_manu clearfix">
            	<dl>
                	<dt>联系我们</dt>
                   <font color="#FFFFFF"><%
				   HashMap mbt = new CommDAO().getmaps("leibie","联系我们","dx");
				   out.print(mbt.get("content"));
				   %></font>
                </dl>
                <dl>
                	<dt>市场合作</dt>
					
                    <dd>
					<%
									
    for(HashMap mapbt:new CommDAO().select("select * from youqinglianjie  order by id desc ",1,5)){
	
     %>
					<a href="<%=mapbt.get("wangzhi")%>" target="_blank"><%=Info.ensubStr(mapbt.get("wangzhanmingcheng"),20)%></a>
					<%
							}
							%>
					</dd>
                </dl>
                </div>
         
         </div>
         <div class="footer_code">
            	<dl>
                    <dd><img src="qtimages/ewm.png" width="94" height="94"></dd>
                    <dd>微信公众号</dd>
                </dl>
            </div>
            </div>           
        </div>
    </div>