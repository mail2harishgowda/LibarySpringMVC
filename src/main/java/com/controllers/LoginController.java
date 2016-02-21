package com.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.models.User;

@Controller
public class LoginController {
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String welcome(){	
		
	
				
		return "redirect:/login";
	}
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String home(){	
		
	
				
		return "home";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getLoginPage(Model model){		
		model.addAttribute("loginUser", new User());		
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String submitLoginPage(@Valid  @ModelAttribute("loginUser") User user,BindingResult result,Model model){
		
	    if(result.hasErrors())	{	    	
	    	return "login";
	    }		
		model.addAttribute("logindetails", new User());		
		return "redirect:/userprofile";
	}
	
	
	@RequestMapping(value="/userprofile", method=RequestMethod.GET)
	public String getProfile(Model model){		
		return "user";
	}
	
	@RequestMapping("/users")
	public @ResponseBody User getUser(){
		User user = new User();
		user.setUserId("1");
		user.setUserName("Harish");
		return user;
	}

}
