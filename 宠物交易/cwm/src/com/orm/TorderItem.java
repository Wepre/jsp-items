package com.orm;

public class TorderItem
{
	private String id;
	private String order_id;
	private int goods_id;
	private int goods_quantity;
	
	
	private Tgoods goods;//表里没有。自己加的
	
	public int getGoods_id()
	{
		return goods_id;
	}
	public void setGoods_id(int goods_id)
	{
		this.goods_id = goods_id;
	}
	public int getGoods_quantity()
	{
		return goods_quantity;
	}
	public void setGoods_quantity(int goods_quantity)
	{
		this.goods_quantity = goods_quantity;
	}
	
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getOrder_id()
	{
		return order_id;
	}
	public void setOrder_id(String order_id)
	{
		this.order_id = order_id;
	}
	public Tgoods getGoods()
	{
		return goods;
	}
	public void setGoods(Tgoods goods)
	{
		this.goods = goods;
	}
	
	

}
