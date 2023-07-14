package com.action;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DB;
import com.orm.TAdmin;
import com.orm.Tgonggao;
import com.orm.Tliuyan;
import com.orm.Tyuding;

public class gonggao_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		
		if(type.endsWith("gonggaoAdd"))
		{
			gonggaoAdd(req, res);
		}
		if(type.endsWith("gonggaoMana"))
		{
			gonggaoMana(req, res);
		}
		if(type.endsWith("gonggaoDel"))
		{
			gonggaoDel(req, res);
		}
		if(type.endsWith("gonggaoDetail"))
		{
			gonggaoDetail(req, res);
		}
		if(type.endsWith("gonggaoList"))
		{
			gonggaoList(req, res);
		}
		
		
		if(type.endsWith("gonggaoDetailQian"))
		{
			gonggaoDetailQian(req, res);
		}
	}
	
	
	public void gonggaoAdd(HttpServletRequest req,HttpServletResponse res)
	{
		String id=String.valueOf(new Date().getTime());
		String title=req.getParameter("title");
		String content=req.getParameter("content");
		String xxtype=req.getParameter("xxtype");
		String shijian=new Date().toLocaleString();
		
		
		String sql="insert into t_gonggao(id,title,xxtype,content,shijian) values(?,?,?,?,?)";
		Object[] params={id,title,xxtype,content,shijian};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "gonggao?type=gonggaoMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
        
	}
	
	
	public void gonggaoDel(HttpServletRequest req,HttpServletResponse res)
	{
		String id=req.getParameter("id");
		
		String sql="delete from t_gonggao where id=?";
		Object[] params={id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "gonggao?type=gonggaoMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}

	public void gonggaoMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List gonggaoList=new ArrayList();
		String sql="select * from t_gonggao";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tgonggao gonggao=new Tgonggao();
				
				gonggao.setId(rs.getString("id"));
				gonggao.setTitle(rs.getString("title"));
				if(rs.getString("xxtype").equals("0"))
				{
					gonggao.setXxtype("网站公告");
				}
				else if(rs.getString("xxtype").equals("1"))
				{
					gonggao.setXxtype("宠物猫知识");
				}
				else if(rs.getString("xxtype").equals("2"))
				{
					gonggao.setXxtype("行业动态");
				}
				else if(rs.getString("xxtype").equals("3"))
				{
					gonggao.setXxtype("宠物猫预订");
				}
				gonggao.setContent(rs.getString("content"));
				
				gonggao.setShijian(rs.getString("shijian"));
				
				gonggaoList.add(gonggao);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("gonggaoList", gonggaoList);
		req.getRequestDispatcher("admin/gonggao/gonggaoMana.jsp").forward(req, res);
	}
	
	public void gonggaoList(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String xxtype=req.getParameter("xxtype");
		List gonggaoList=new ArrayList();
		String sql="select * from t_gonggao where xxtype='"+xxtype+"'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tgonggao gonggao=new Tgonggao();
				
				gonggao.setId(rs.getString("id"));
				gonggao.setTitle(rs.getString("title"));
				if(rs.getString("title").equals("0"))
				{
					gonggao.setXxtype("网站公告");
				}
				else if(rs.getString("title").equals("1"))
				{
					gonggao.setXxtype("绿色食品常识");
				}
				else if(rs.getString("title").equals("2"))
				{
					gonggao.setXxtype("网站新闻");
				}
				else if(rs.getString("title").equals("3"))
				{
					gonggao.setXxtype("政策法规");
				}
				gonggao.setContent(rs.getString("content"));
				
				gonggao.setShijian(rs.getString("shijian"));
				
				gonggaoList.add(gonggao);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("gonggaoList", gonggaoList);
		req.getRequestDispatcher("/qiantai/gonggao//gonggaoList.jsp").forward(req, res);
	}
	
	
	public void gonggaoDetail(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String id=req.getParameter("id");
		Tgonggao gonggao=new Tgonggao();
		
		String sql="select * from t_gonggao where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
			gonggao.setId(rs.getString("id"));
			gonggao.setTitle(rs.getString("title"));
			gonggao.setContent(rs.getString("content"));
			gonggao.setShijian(rs.getString("shijian"));
			
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		
		req.setAttribute("gonggao", gonggao);
		req.getRequestDispatcher("admin/gonggao/gonggaoDetail.jsp").forward(req, res);
	}
	
	public void gonggaoDetailQian(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String id=req.getParameter("id");
		Tgonggao gonggao=new Tgonggao();
		
		String sql="select * from t_gonggao where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
			gonggao.setId(rs.getString("id"));
			gonggao.setTitle(rs.getString("title"));
			gonggao.setContent(rs.getString("content"));
			gonggao.setShijian(rs.getString("shijian"));
			
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		

		List liuyanList=new ArrayList();
		String sql1="select * from t_yuding where newsid='"+id+"'";
		Object[] params1={};
		DB mydb1=new DB();
		try
		{
			mydb1.doPstm(sql1, params1);
			ResultSet rs1=mydb1.getRs();
			while(rs1.next())
			{
				Tyuding liuyan=new Tyuding();
				
				liuyan.setId(rs1.getString("id"));
				liuyan.setNewsid(id);
				liuyan.setContent(rs1.getString("content"));
				 
				liuyanList.add(liuyan);
		    }
			rs1.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb1.closed();
		
		req.setAttribute("liuyanList", liuyanList);
		
		req.setAttribute("gonggao", gonggao);
		req.getRequestDispatcher("/qiantai/gonggao/gonggaoDetailQian.jsp").forward(req, res);
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
	public void init(ServletConfig config) throws ServletException 
	{
		super.init(config);
	}
	
	public void destroy() 
	{
		
	}
}
