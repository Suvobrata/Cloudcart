package com.cloudcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cloudcart.model.Product;
import com.cloudcart.services.DataServices;

@Controller
@RequestMapping("/products")
@Configuration
@ComponentScan("com.cloudcart.services")
public class RestController {
	
	@Autowired
	DataServices dataservices;
	
	
	@RequestMapping(value = "/{id}",method=RequestMethod.GET)
	public @ResponseBody Product getProduct(@PathVariable ("id") long id){
		
		Product product = null;
		
		try {
			product = dataservices.getProductById(id);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return product;
		
		
	}
}