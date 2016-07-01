package com.cloudcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.cloudcart.model.Product;

@Controller
public class ListProducts {
	
	@RequestMapping("/product/{uid}")
	public ModelAndView product(@PathVariable("uid")int uid){
		
		RestTemplate resttemplate = new RestTemplate();
		String url = "http://localhost:8080/Cloudcart/products/{uid}";
		
		Product pro = resttemplate.getForObject(url, Product.class, uid);
		return new ModelAndView("productdisplay","prod",pro);
		
	}
		
		
		
		
		
	}
	
	
	
	
	


