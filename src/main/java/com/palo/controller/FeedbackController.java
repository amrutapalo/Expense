package com.palo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.palo.dao.FeedbackDao;
import com.palo.model.CurrentUser;
import com.palo.model.Feedback;

@Controller
public class FeedbackController {

	@Autowired
	FeedbackDao feedbackDao;
	
	@Autowired
	CurrentUser currentUser;
	
		public FeedbackController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("/feedback")
	public ModelAndView feedback() {
		ModelAndView mv=new ModelAndView("feedback");
		
		return mv;
	}
	
	@RequestMapping("/submitFeedback")
	public ModelAndView submitFeedback(@RequestParam String feedbackText) {
		ModelAndView mv=new ModelAndView();
		
		Feedback feedback=new Feedback();
		System.out.println("Submit feedback function where id = "+currentUser.getLoggedInUserId());
		feedback.setUserId(currentUser.getLoggedInUserId());
		feedback.setFeedback(feedbackText);
		feedbackDao.save(feedback);
		mv.addObject("obj","Feedback sent!");
		mv.setViewName("feedback");
		
		return mv;
	}

	
	

}
