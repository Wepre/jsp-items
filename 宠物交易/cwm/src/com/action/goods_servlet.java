package com.action;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DB;
import com.orm.Tcatelog;
import com.orm.Tgoods;
import com.service.liuService;

public class goods_servlet extends HttpServlet
{ 
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
		String type=req.getParameter("type");
		
		if(type.endsWith("goodsAdd"))
		{
			goodsAdd(req, res);
		}
		if(type.endsWith("goodsMana"))
		{
			goodsMana(req, res);
		}
		if(type.endsWith("goodsDel"))
		{
			goodsDel(req, res);
		}
		if(type.endsWith("goodsDetailHou"))
		{
			goodsDetailHou(req, res);
		}
		
		
		if(type.endsWith("goodsByCatelog"))
		{
			goodsByCatelog(req, res);
		}
		if(type.endsWith("search"))
		{
			search(req, res);
		}
		if(type.endsWith("goodsDetailQian"))
		{
			goodsDetailQian(req, res);
		}
	}
	
	
	public void goodsAdd(HttpServletRequest req,HttpServletResponse res)
	{
		int catelog_id=Integer.parseInt(req.getParameter("catelog_id"));
		String nannvkuan=req.getParameter("nannvkuan");
		String bianhao=req.getParameter("bianhao");
		String mingcheng=req.getParameter("mingcheng");
		
		String jieshao=req.getParameter("jieshao");
		String pinpai=req.getParameter("pinpai");
		String dizhi=req.getParameter("dizhi");
		String dianhua=req.getParameter("dianhua");
		String youxiang=req.getParameter("youxiang");
		String fujian=req.getParameter("fujian");
		int shichangjia=Integer.parseInt(req.getParameter("shichangjia"));
		
		int tejia=Integer.parseInt(req.getParameter("shichangjia"));
		String shifoutejia="fou";
		int kucun=0;
		String del="no";
		
		String sql="insert into t_goods(catelog_id,nannvkuan,bianhao,mingcheng,jieshao,pinpai,dizhi,dianhua,youxiang,fujian,shichangjia,tejia,shifoutejia,kucun,del) " +
				   "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params={catelog_id,nannvkuan,bianhao,mingcheng,jieshao,pinpai,dizhi,dianhua,youxiang,fujian,shichangjia,tejia,shifoutejia,kucun,del};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "goods?type=goodsMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}
	public void goodsDel(HttpServletRequest req,HttpServletResponse res)
	{
		int id=Integer.parseInt(req.getParameter("id"));
		String sql="update t_goods set del='yes' where id="+id;
		Object[] params={};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "goods?type=goodsMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	public void goodsMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List goodsList=new ArrayList();
		String sql="select * from t_goods where del='no' order by shifoutejia";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tgoods goods=new Tgoods();
				
				goods.setId(rs.getInt("id"));
				goods.setCatelog_id(rs.getInt("catelog_id"));
				goods.setNannvkuan(rs.getString("nannvkuan"));
				goods.setBianhao(rs.getString("bianhao"));
				
				goods.setMingcheng(rs.getString("mingcheng"));
				goods.setJieshao(rs.getString("jieshao"));
				goods.setPinpai(rs.getString("pinpai"));
				goods.setDizhi(rs.getString("dizhi"));
				goods.setDianhua(rs.getString("dianhua"));
				goods.setYouxiang(rs.getString("youxiang"));
				goods.setFujian(rs.getString("fujian"));
				
				goods.setShichangjia(rs.getInt("shichangjia"));
				goods.setTejia(rs.getInt("tejia"));
				goods.setShifoutejia(rs.getString("shifoutejia"));
				goods.setKucun(rs.getInt("kucun"));
				goods.setDel(rs.getString("del"));
				
				goodsList.add(goods);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("goodsList", goodsList);
		req.getRequestDispatcher("admin/goods/goodsMana.jsp").forward(req, res);
	}
	
	public void goodsDetailHou(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		int id=Integer.parseInt(req.getParameter("id"));
		
		req.setAttribute("goods", liuService.getGoods(id));
		req.getRequestDispatcher("admin/goods/goodsDetailHou.jsp").forward(req, res);
	}
	
	public void goodsShezhiTejia(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		int id=Integer.parseInt(req.getParameter("id"));
		int tejia=Integer.parseInt(req.getParameter("tejia"));
		
		String sql="update t_goods set tejia=?,shifoutejia='shi' where id="+id;
		Object[] params={tejia};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "操作成功");
		String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	public void goodsByCatelog(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		int catelog_id=Integer.parseInt(req.getParameter("catelog_id"));
		
		req.setAttribute("goodsList", liuService.goodsByCatelog(catelog_id));
		req.getRequestDispatcher("qiantai/goods/goodsByCatelog.jsp").forward(req, res);
	}
	
	public void search(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
	 	
		String title = new String(req.getParameter("title").getBytes("iso-8859-1"), "utf-8");  
		
		req.setAttribute("goodsList", liuService.search(title));
		req.getRequestDispatcher("qiantai/goods/goodsBySearch.jsp").forward(req, res);
	}
	
	public void goodsDetailQian(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		int id=Integer.parseInt(req.getParameter("id"));
		
		req.setAttribute("goods", liuService.getGoods(id));
		req.getRequestDispatcher("qiantai/goods/goodsDetailQian.jsp").forward(req, res);
	}
	
	public void dispatch(String targetURI,HttpServletRequest request,HttpServletResponse response) 
	{
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(targetURI);
		try 
		{
		    dispatch.forward(request, response);
		    return;
		} 
		catch (ServletException e) 
		{
                    e.printStackTrace();
		} 
		catch (IOException e) 
		{
			
		    e.printStackTrace();
		}
	}

}
