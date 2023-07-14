<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>茶叶在线交易平台</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css> 
{
	FONT-SIZE: 12px
}
#menuTree A {
	COLOR: #566984; TEXT-DECORATION: none
}
</STYLE>
<SCRIPT src="images/TreeNode.js" type=text/javascript></SCRIPT>
<SCRIPT src="images/Tree.js" type=text/javascript></SCRIPT>
<META content="MSHTML 6.00.2900.5848" name=GENERATOR>
</HEAD>
<BODY style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(images/bg.gif); BACKGROUND-REPEAT: repeat-x">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
    <TR>
      <TD width=10 height=29><IMG src="images/bg_left_tl.gif"></TD>
      <TD 
    style="FONT-SIZE: 18px; BACKGROUND-IMAGE: url(images/bg_left_tc.gif); COLOR: white; FONT-FAMILY: system">Main 
        Menu</TD>
      <TD width=10><IMG src="images/bg_left_tr.gif"></TD>
    </TR>
    <TR>
      <TD style="BACKGROUND-IMAGE: url(images/bg_left_ls.gif)"></TD>
      <TD id=menuTree 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px; HEIGHT: 100%; BACKGROUND-COLOR: white" 
    vAlign=top></TD>
      <TD style="BACKGROUND-IMAGE: url(images/bg_left_rs.gif)"></TD>
    </TR>
    <TR>
      <TD width=10><IMG src="images/bg_left_bl.gif"></TD>
      <TD style="BACKGROUND-IMAGE: url(images/bg_left_bc.gif)"></TD>
      <TD width=10><IMG 
src="images/bg_left_br.gif"></TD>
    </TR>
  </TBODY>
</TABLE>
<SCRIPT type=text/javascript>
var tree = null;var root = new TreeNode('系统菜单');
var a1;
var b1;
 a1 = new TreeNode('系统用户管理');
	b1 = new TreeNode('用户管理', 'yhzhgl.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1 = new TreeNode('注册会员管理', 'yonghuzhuce_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
 root.add(a1);

 a1 = new TreeNode('变幻图管理');
	 b1 = new TreeNode('变幻图添加', 'xinwentongzhi_add2.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
	 b1 = new TreeNode('变幻图查询', 'xinwentongzhi_list3.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);
 
 a1 = new TreeNode('新闻数据管理');
	 b1 = new TreeNode('新闻数据添加', 'xinwentongzhi_add.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
	 b1 = new TreeNode('新闻数据查询', 'xinwentongzhi_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);

 a1 = new TreeNode('商品类别管理');
	 b1 = new TreeNode('商品类别添加', 'shangpinleibie_add.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
	 b1 = new TreeNode('商品类别查询', 'shangpinleibie_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);

 a1 = new TreeNode('商品信息管理');
	 b1 = new TreeNode('商品信息添加', 'shangpinxinxi_add.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
	 b1 = new TreeNode('商品信息查询', 'shangpinxinxi_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);

 a1 = new TreeNode('商品库存管理');
	 b1 = new TreeNode('入库记录添加', 'rukujilu_add.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
	 b1 = new TreeNode('入库记录查询', 'rukujilu_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);
  
 
  a1 = new TreeNode('商品订单管理');
	 b1 = new TreeNode('商品订单查询', 'shengchengdingdan_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);

 a1 = new TreeNode('系统管理');
	b1 = new TreeNode('数据备份', 'databack.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1 = new TreeNode('友情连接添加', 'youqinglianjie_add.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1 = new TreeNode('友情连接查询', 'youqinglianjie_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1= new TreeNode('系统简介', 'dx.jsp?lb=系统简介', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1= new TreeNode('联系我们', 'dx.jsp?lb=联系我们', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1 = new TreeNode('留言管理', 'liuyanban_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
root.add(a1);

tree = new Tree(root);tree.show('menuTree')
</SCRIPT>
</BODY>
</HTML>
