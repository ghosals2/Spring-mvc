package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm() {
		return "Helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "Helloworld";
	}
	
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		//read from form
		String theName=request.getParameter("studentName");
		// process the data
		theName=theName.toUpperCase();
		//create the message
		String result="yo!" + theName;
		//add message to the Model
		model.addAttribute("message", result);
		
		return "Helloworld";
	}
	
	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(@RequestParam("studentName") String theName, Model model) {
		//read from form
		
		// process the data
		theName=theName.toUpperCase();
		//create the message
		String result="Hey my friend from v3" + theName;
		//add message to the Model
		model.addAttribute("message", result);
		
		return "Helloworld";
	}
}
