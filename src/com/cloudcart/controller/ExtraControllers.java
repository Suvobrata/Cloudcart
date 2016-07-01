package com.cloudcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class ExtraControllers {
	
	
	@RequestMapping(value="/ProjectDetails", method=RequestMethod.GET)
	public String ProjectDetails(){
		
		
		
		return "Project";
	}
	
	@RequestMapping(value="/web", method = RequestMethod.GET)
	public String WebService(){
		
		return "WebService";
	}

}
