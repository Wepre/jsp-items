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
import com.orm.Tgonggao;
import com.orm.Tliuyan;
import com.orm.Tuser;
import com.orm.Tyuding;
import com.service.liuService;

public class yuding_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		
		if(type.endsWith("yudingAdd"))
		{
			liuyanAdd(req, res);
		}
		if(type.endsWith("liuyanAll"))
		{
			liuyanAll(req, res);
		}
		if(type.endsWith("liuyanDel"))
		{
			liuyanDel(req, res);
		}
		if(type.endsWith("liuyanMana"))
		{
			liuyanMana(req, res);
		}
	}
	
	
	public void liuyanAdd(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String newsid=req.getParameter("newsid");
		String content=req.getParameter("content");
		
		String sql="insert into t_yuding(newsid,content) values(?,?)";
		Object[] params={newsid,content};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		 
		Tgonggao gonggao=new Tgonggao();
		
		String sql1="select * from t_gonggao where id=?";
		Object[] params1={newsid};
		DB mydb1=new DB();
		try
		{
			mydb1.doPstm(sql1, params1);
			ResultSet rs1=mydb1.getRs();
			rs1.next();
			
			gonggao.setId(rs1.getString("id"));
			gonggao.setTitle(rs1.getString("title"));
			gonggao.setContent(rs1.getString("content"));
			gonggao.setShijian(rs1.getString("shijian"));
			
			rs1.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("gonggao", gonggao);
		
		
		List liuyanList=new ArrayList();
		String sql2="select * from t_yuding where newsid='"+newsid+"'";
		Object[] params2={};
		DB mydb2=new DB();
		try
		{
			mydb1.doPstm(sql2, params2);
			ResultSet rs2=mydb1.getRs();
			while(rs2.next())
			{
				Tyuding liuyan=new Tyuding();
				
				liuyan.setId(rs2.getString("id"));
				liuyan.setNewsid(newsid);
				liuyan.setContent(rs2.getString("content"));
				 
				liuyanList.add(liuyan);
		    }
			rs2.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb1.closed();
		
		req.setAttribute("liuyanList", liuyanList);
		req.getRequestDispatcher("/qiantai/gonggao/gonggaoDetailQian.jsp").forward(req, res);
        
	}
	
	public void liuyanAll(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List liuyanList=new ArrayList();
		String sql="select * from t_liuyan";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tliuyan liuyan=new Tliuyan();
				
				liuyan.setId(rs.getString("id"));
				liuyan.setTitle(rs.getString("title"));
				liuyan.setContent(rs.getString("content"));
				liuyan.setShijian(rs.getString("shijian"));
				liuyan.setUser_id(rs.getString("user_id"));
				
				liuyan.setFujian(rs.getString("fujian"));
				String sql1="select * from t_user   where  id="+rs.getString("user_id");
				mydb.doPstm(sql1, params);
				ResultSet rs1=mydb.getRs();
				if(rs1.next())
				{
					liuyan.setUser_name(rs1.getString("name"));
				}
				liuyanList.add(liuyan);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("liuyanList", liuyanList);
		req.getRequestDispatcher("qiantai/liuyan/liuyanban.jsp").forward(req, res);
	}
	
	
	public void liuyanDel(HttpServletRequest req,HttpServletResponse res)
	{
		String id=req.getParameter("id");
		
		String sql="delete from t_liuyan where id=?";
		Object[] params={id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "liuyan?type=liuyanMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}

	public void liuyanMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List liuyanList=new ArrayList();
		String sql="select * from t_liuyan";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tliuyan liuyan=new Tliuyan();
				
				liuyan.setId(rs.getString("id"));
				liuyan.setTitle(rs.getString("title"));
				liuyan.setContent(rs.getString("content"));
				liuyan.setShijian(rs.getString("shijian"));
				liuyan.setUser_id(rs.getString("user_id"));
				liuyan.setFujian(rs.getString("fujian"));
				liuyanList.add(liuyan);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("liuyanList", liuyanList);
		req.getRequestDispatcher("admin/liuyan/liuyanMana.jsp").forward(req, res);
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
