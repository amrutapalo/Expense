package com.palo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FeedbackController {

	public FeedbackController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("/feedback")
	public ModelAndView feedback() {
		ModelAndView mv=new ModelAndView("feedback");
		
		return mv;
	}
	
	@RequestMapping("/submitFeedback")
	public ModelAndView submitFeedback() {
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("obj","Feedback sent!");
		mv.setViewName("feedback");
		
		return mv;
	}

	
	

}
