package com.niit.shoppingcartfrontend.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.dao.UserDAO;

@Controller
public class UserController {
	Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserDAO userDAO;
	@Autowired
	User user;

	@RequestMapping(value="/login_enter",method=RequestMethod.POST)
	public ModelAndView isValidUser(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password, HttpSession session) {
		log.debug("Starting of the method login");
		log.info("userID is {}  password is {}", name, password);
  
		
		ModelAndView mv = new ModelAndView("/home");
		boolean isValidUser = userDAO.isValidUser(name, password);

		if (isValidUser == true) {

			user = userDAO.get(name);
			session.setAttribute("loggedInUser", user.getName());
			System.out.println(user.getName() + "logged in");

			if (user.isIsadmin()) {
				mv.addObject("isadmin", "true");
				System.out.println(user.getName() + ":admin logged in");
			} 
			else
			{
				mv.addObject("isadmin", "false");

			}

		} else {

			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid Credentials");

		}
		log.debug("Ending of the method login");
		return mv;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("home");
		session.invalidate();
		session = request.getSession(true);
		// session.setAttribute("category", category);
		// session.setAttribute("categoryList", categoryDAO.list());

		mv.addObject("logoutMessage", "You successfully logged out");
		mv.addObject("loggedOut", "true");
	
		return mv;
	}

	@RequestMapping(value = "here/register", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute User user) {
		userDAO.saveOrUpdate(user);
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("successMessage", "You successfully Logged in");

		return mv;
	}

}