<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>��Ҷ���߽���ƽ̨</TITLE>
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
var tree = null;var root = new TreeNode('ϵͳ�˵�');
var a1;
var b1;
 a1 = new TreeNode('ϵͳ�û�����');
	b1 = new TreeNode('�û�����', 'yhzhgl.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1 = new TreeNode('ע���Ա����', 'yonghuzhuce_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
 root.add(a1);

 a1 = new TreeNode('���ͼ����');
	 b1 = new TreeNode('���ͼ���', 'xinwentongzhi_add2.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
	 b1 = new TreeNode('���ͼ��ѯ', 'xinwentongzhi_list3.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);
 
 a1 = new TreeNode('�������ݹ���');
	 b1 = new TreeNode('�����������', 'xinwentongzhi_add.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
	 b1 = new TreeNode('�������ݲ�ѯ', 'xinwentongzhi_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);

 a1 = new TreeNode('��Ʒ������');
	 b1 = new TreeNode('��Ʒ������', 'shangpinleibie_add.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
	 b1 = new TreeNode('��Ʒ����ѯ', 'shangpinleibie_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);

 a1 = new TreeNode('��Ʒ��Ϣ����');
	 b1 = new TreeNode('��Ʒ��Ϣ���', 'shangpinxinxi_add.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
	 b1 = new TreeNode('��Ʒ��Ϣ��ѯ', 'shangpinxinxi_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);

 a1 = new TreeNode('��Ʒ������');
	 b1 = new TreeNode('����¼���', 'rukujilu_add.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
	 b1 = new TreeNode('����¼��ѯ', 'rukujilu_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);
  
 
  a1 = new TreeNode('��Ʒ��������');
	 b1 = new TreeNode('��Ʒ������ѯ', 'shengchengdingdan_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	 a1.add(b1);
 root.add(a1);

 a1 = new TreeNode('ϵͳ����');
	b1 = new TreeNode('���ݱ���', 'databack.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1 = new TreeNode('�����������', 'youqinglianjie_add.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1 = new TreeNode('�������Ӳ�ѯ', 'youqinglianjie_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1= new TreeNode('ϵͳ���', 'dx.jsp?lb=ϵͳ���', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1= new TreeNode('��ϵ����', 'dx.jsp?lb=��ϵ����', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
	b1 = new TreeNode('���Թ���', 'liuyanban_list.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
	a1.add(b1);
root.add(a1);

tree = new Tree(root);tree.show('menuTree')
</SCRIPT>
</BODY>
</HTML>
