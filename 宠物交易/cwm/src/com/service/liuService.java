package com.service;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DB;
import com.orm.Tcatelog;
import com.orm.Tgoods;
import com.orm.Torder;
import com.orm.TorderItem;

public class liuService
{
	public static List catelogList()
	{
		List catelogList=new ArrayList();
		String sql="select * from t_catelog where del='no'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tcatelog catelog=new Tcatelog();
				catelog.setId(rs.getInt("id"));
				catelog.setName(rs.getString("name"));
				catelogList.add(catelog);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return catelogList;
	}
	
	public static String getUserName(String id)
	{
		String name="";
		
		String sql="select * from t_user where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			name=rs.getString("loginname");
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return name;
	}
	
	
	public static Tgoods getGoods(int id)
	{
		Tgoods goods=new Tgoods();
		
		String sql="select * from t_goods where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
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
			
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return goods;
	}
	
	
	public static List goodsNew()
	{
		List goodsList=new ArrayList();
		String sql="select * from t_goods where del='no' and shifoutejia='fou' order by id desc";
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
				goods.setFujian(rs.getString("fujian"));
				goods.setDizhi(rs.getString("dizhi"));
				goods.setDianhua(rs.getString("dianhua"));
				goods.setYouxiang(rs.getString("youxiang"));
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
		
		if(goodsList.size()>8)
		{
			goodsList=goodsList.subList(0, 8);
		}
		return goodsList;
	}
	
	
	public static List goodsPaihang4()
	{
		List goodsList=new ArrayList();
		String sql="select sum(goods_quantity),goods_id from t_orderitem group by goods_id order by sum(goods_quantity) desc";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				goodsList.add(getGoods(rs.getInt(2)));
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		if(goodsList.size()>4)
		{
			goodsList=goodsList.subList(0, 4);
		}
		return goodsList;
	}
	
	
	public static List goodsByCatelog(int catelog_id)
	{
		List goodsList=new ArrayList();
		String sql="select * from t_goods where del='no' and catelog_id=? order by id desc";
		Object[] params={catelog_id};
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
		return goodsList;
	}
	
	public static List search(String title)
	{
		List goodsList=new ArrayList();
		String sql="select * from t_goods where del='no' and mingcheng like '%"+title+"%' order by id desc";
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
		return goodsList;
	}
	
	
	
	public static void saveOrder(Torder order)
	{
		String sql="insert into t_order(id,bianhao,shijian,zhuangtai,songhuodizhi,fukuanfangshi,jine,user_id) values(?,?,?,?,?,?,?,?)";
		Object[] params={order.getId(),order.getBianhao(),order.getShijian(),order.getZhuangtai(),order.getSonghuodizhi(),order.getFukuanfangshi(),order.getJine(),order.getUser_id()};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
	}
	
	public static void saveOrderItem(String id,String order_id,int goods_id,int goods_quantity)
	{
		String sql="insert into t_orderitem(id,order_id,goods_id,goods_quantity) values(?,?,?,?)";
		Object[] params={id,order_id,goods_id,goods_quantity};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
	}
	
	public static void updateGoodsKucun(int goods_id,int goods_quantity)
	{
		String sql="update t_goods set kucun=kucun-? where id=?";
		Object[] params={goods_quantity,goods_id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
	}
	
	
	public static List orderList(String user_id)
	{
		List orderList=new ArrayList();
		String sql="select * from t_order where user_id=?";
		Object[] params={user_id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Torder order=new Torder();
				
				order.setId(rs.getString("id"));
				order.setBianhao(rs.getString("bianhao"));
				order.setShijian(rs.getString("shijian"));
				order.setZhuangtai(rs.getString("zhuangtai"));
				order.setSonghuodizhi(rs.getString("songhuodizhi"));
				order.setFukuanfangshi(rs.getString("fukuanfangshi"));
				order.setJine(rs.getInt("jine"));
				order.setUser_id(rs.getString("user_id"));
				
				orderList.add(order);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return orderList;
	}
	
	
	public static List orderItemList(String order_id)
	{
		List orderitemList=new ArrayList();
		String sql="select * from t_orderitem where order_id=?";
		Object[] params={order_id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				TorderItem orderItem=new TorderItem();
				
				orderItem.setId(rs.getString("id"));
				orderItem.setGoods(getGoods(rs.getInt("goods_id")));
				orderItem.setGoods_quantity(rs.getInt("goods_quantity"));
				
				orderitemList.add(orderItem);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return orderitemList;
	}
}
