package com.palo.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.palo.model.Category;
import com.palo.model.dao.CategoryDao;
import com.sun.tools.javac.util.List;

@Controller
public class CategoryController {

	@Autowired
	private CategoryDao categorydao;
	public CategoryController() {
		// TODO Auto-generated constructor stub
	}

	
	  @GetMapping("/categories")
	  public Collection<Category> categories(){ 
		  
		  Collection<Category> response =(Collection<Category>) categorydao.findAll();
		  return response; 
		  
	 }
	 
}
