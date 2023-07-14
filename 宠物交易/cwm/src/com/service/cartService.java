package com.service;

import javax.servlet.http.HttpSession;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import com.util.Cart;

public class cartService
{
	public String modiNum(int goodsId,int quantity)
	{
		String result="";
		try
		{
			Thread.sleep(1000);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*if(liuService.getGoods(goodsId).getKucun()<quantity)
		{
			result="no";
		}
		else
		{*/
			 WebContext ctx = WebContextFactory.get(); 
			 HttpSession session=ctx.getSession();
			 Cart cart=(Cart)session.getAttribute("cart");
			 cart.updateCart(goodsId, quantity);
			 session.setAttribute("cart", cart);
			 
			 result="yes";
		/*}*/
		return result;
	}
	
	public String delGoodsFromCart(int goodsId)
	{
		 WebContext ctx = WebContextFactory.get(); 
		 HttpSession session=ctx.getSession();
		 Cart cart=(Cart)session.getAttribute("cart");
		 cart.delGoods(goodsId);
		 session.setAttribute("cart", cart);
		 return "yes";
	}
	
	
	public String clearCart()
	{
		try
		{
			Thread.sleep(1000);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 WebContext ctx = WebContextFactory.get(); 
		 HttpSession session=ctx.getSession();
		 Cart cart=(Cart)session.getAttribute("cart");
		 cart.getItems().clear();
		 session.setAttribute("cart", cart);
		 return "yes";
	}
	
}
