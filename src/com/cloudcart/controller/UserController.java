package com.cloudcart.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cloudcart.model.Customer;
import com.cloudcart.services.DataServices;

@Controller

public class UserController {

	@Autowired
	private DataServices dataservices;

	@RequestMapping(value = "/Signin", method = RequestMethod.GET)
	public String getSignIn() {

		return "Signin";
	}

	@RequestMapping(value = "/Signin", method = RequestMethod.POST)
	public String verifySignIn(@RequestParam String uname, @RequestParam String password, Model model,
			HttpSession session, Map<String, Object> cust) {

		try {
			Customer customer = dataservices.customerSignIn(uname, password);
			cust.put("cust", customer);
			session.setAttribute("loggedinuser", customer);
			if (customer == null) {
				model.addAttribute("loginError", "Invalid Username/Password.Try again");
				return "Signin";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "index";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {

		session.removeAttribute("loggedinuser");
		return "Signin";

	}

	@RequestMapping(value = "/index")
	public String index() {

		return "index";
	}
}