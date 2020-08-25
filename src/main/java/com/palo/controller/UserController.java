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

	@RequestMapping("registrationdone")
	public String registrationDone(User user) {
		
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		System.out.println(user.getId());
		userdao.save(user);
		return "login";
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("login");
		return mv;
	}
	//START HERE
	@RequestMapping(value ="loginValidate")
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
			//Expense expense=new Expense();
			//expense.setId(id);
			mv.addObject("id",id);
			mv.setViewName("Expenses");
		}else {
			mv.setViewName("login");
		}
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout() {
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("logout");
		return mv;
	}

}
