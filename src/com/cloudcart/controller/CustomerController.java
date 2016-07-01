package com.cloudcart.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cloudcart.model.Customer;
import com.cloudcart.services.DataServices;

@Controller

public class CustomerController {

	@Autowired
	DataServices dataservices;

	@RequestMapping(value="/Register",method = RequestMethod.GET)
	public String createForm() {

		return "Register";
	}

	@RequestMapping(value="/Register",method = RequestMethod.POST)
	public String saveForm(Customer customer,HttpSession session,Map<String, Object> model) {

		try {
			dataservices.addCustomer(customer);
			model.put("cust", customer);
			
			session.setAttribute("loggedinuser", customer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "index";

	}

	@RequestMapping(value="/profile")
	public String getUserProfile( Map<String, Object> model,Customer customer,HttpSession session) {
		    
		try {
			customer = (Customer) session.getAttribute("loggedinuser");
		    model.put("cust", customer);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "Profile";

	}
}
