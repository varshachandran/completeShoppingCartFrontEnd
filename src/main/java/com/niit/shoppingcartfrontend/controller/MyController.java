package com.niit.shoppingcartfrontend.controller;



import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;




@Controller
public class MyController {
  Logger log = LoggerFactory.getLogger(MyController.class);
	
	
	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	@RequestMapping("/")
	public ModelAndView myfun1(HttpSession session)
	
	{
	log.debug("Starting of the method onLoad");
	  ModelAndView mv=new ModelAndView("/home");
	  
	  /*session.setAttribute("category", category);
	  session.setAttribute("categoryList", categoryDAO.list());*/
	  log.debug("Ending of the method onLoad");
	  return mv;
		
	}
	
	
	@RequestMapping("/loginhere")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("user", user);
		mv.addObject("isUserClickedLoginHere", "true");
		return mv;
	}
	
	@RequestMapping("/registerhere")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("user", user);
		mv.addObject("isUserClickedRegisterHere", "true");
		return mv;
	}	
	
	
}
