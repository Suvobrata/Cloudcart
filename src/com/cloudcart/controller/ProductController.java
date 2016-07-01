package com.cloudcart.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cloudcart.model.Product;
import com.cloudcart.services.DataServices;

@Controller

public class ProductController {

	@Autowired
	DataServices dataservices;

	@RequestMapping(value="/Laptops",method = RequestMethod.GET)
	public String LaptopList() {

		return "Listdisplay";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String getProductProfile(@PathVariable long id, Map<String, Object> model) {

		try {
			Product product = dataservices.getProducts(id);
			model.put("prod", product);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "productdisplay";
	}
	


}
