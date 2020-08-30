package com.palo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.palo.dao.UserDao;
import com.palo.model.CurrentUser;
import com.palo.model.Expense;
import com.palo.model.User;

@Controller
public class UserController {

	@Autowired
	UserDao userdao;
	@Autowired
	CurrentUser currentUser;
	
	public UserController() {
		// TODO Auto-generated constructor stub
	}

	@RequestMapping("/home")
	  public ModelAndView home(){
		  ModelAndView mv=new ModelAndView();  
		  mv.setViewName("home");
		  return mv;
	 }
	
	@RequestMapping("/")
	  public ModelAndView homeWelcome(){
		  ModelAndView mv=new ModelAndView();  
		  mv.setViewName("home");
		  return mv;
	 }
	
	 @RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("register");
		return mv;
	}

	@RequestMapping(value = "registrationdone", method = RequestMethod.POST)
	public ModelAndView registrationDone(User user) {
		
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		System.out.println(user.getId());
		
		User error=userdao.findById(user.getId()).orElse(new User());
		
		ModelAndView mv=new ModelAndView();
		if(error.getId() == user.getId()) {
			mv.addObject("errorMessage","An user with same mobile number already exists!");
			mv.setViewName("register");
		}else {
			userdao.save(user);
			mv.setViewName("login");
		}
		
		return mv;
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("login");
		return mv;
	}

	@RequestMapping(value ="loginValidate", method = RequestMethod.POST)
	public ModelAndView loginValidate(@RequestParam Long id,
			@RequestParam String password) {
		
		System.out.println(currentUser.getLoggedInUserId());
		currentUser.setLoggedInUserId(id);
		ModelAndView mv=new ModelAndView();
		System.out.println(id);
		User user=userdao.findById(id).orElse(new User());
		
		String newPassword=user.getPassword();
		System.out.println("In login Validate"+ currentUser.getLoggedInUserId());
		if(password.equals(newPassword)) {
			mv.setViewName("loginHome");
		}else {
			mv.setViewName("login");
		}
		return mv;
	}
	
	@RequestMapping("/loginHome")
	public ModelAndView loginHome() {
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("loginHome");
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout() {
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("logout");
		return mv;
	}

}
