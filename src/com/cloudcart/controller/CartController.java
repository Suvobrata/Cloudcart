package com.cloudcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.*;

import javax.servlet.http.HttpSession;

import com.cloudcart.beans.Cart;
import com.cloudcart.model.Customer;
import com.cloudcart.model.Product;
import com.cloudcart.services.DataServices;

@Controller
public class CartController {

	@Autowired
	DataServices dataservices;

	@Autowired
	private Cart cart;

	@RequestMapping(value = "/cart/add/{id}")
	public String addToCart(@PathVariable("id") Long id, Model model, @RequestHeader("referer") String referredFrom) {

		try {

			Product product = dataservices.getProductById(id);
			cart.addProducts(product, 1);

		}

		catch (

		Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:" + referredFrom;

	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String showCart(Model model) {

		model.addAttribute(cart);
		return "viewcart";

	}

	@RequestMapping(value = "/cart", method = RequestMethod.POST)
	public String doCheckOut(HttpSession session, Customer customer, Map<String, Object> cust) {

		customer = (Customer) session.getAttribute("loggedinuser");

		cust.put("Email", customer);

		return "ThankYou";

	}

}
