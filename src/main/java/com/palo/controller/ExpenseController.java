package com.palo.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.palo.dao.ExpenseDao;
import com.palo.model.CurrentUser;
import com.palo.model.Expense;
import com.zaxxer.hikari.util.SuspendResumeLock;


@Controller
public class ExpenseController {

	@Autowired
	private ExpenseDao expensedao;
	//@Autowired
	//private Expense expense;
	@Autowired
	CurrentUser currentUser;

	public ExpenseController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("/addexpense")
	  public ModelAndView expense(Expense expense){
		  ModelAndView mv=new ModelAndView();		  
		  mv.setViewName("Expenses");
		  return mv;		  
	 
	 }

	 @RequestMapping("save")
	  public ModelAndView expenseSave(@RequestParam String title,@RequestParam String description,
	  @RequestParam String category,@RequestParam Long expenseAmount,
	  @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date expenseDate){
		  ModelAndView mv=new ModelAndView();
		  System.out.println("expenseSave function id " + currentUser.getLoggedInUserId() );

		  Expense expense=new Expense();
		  expense.setTitle(title);
		  expense.setDescripton(description);
		  expense.setCategory(category);
		  expense.setExpenseAmount(expenseAmount);
		  expense.setExpensedate(expenseDate);
		  expense.setUserId(currentUser.getLoggedInUserId());
		  expensedao.save(expense);
		
		  mv.addObject("obj","Expense Saved!");

		  mv.setViewName("Expenses");
		 
		  return mv;		  
	 
	 }

	@RequestMapping("/listofexpenses")
	  public ModelAndView listofexpensesId(){
			
		  System.out.println(currentUser.getLoggedInUserId());
		  ModelAndView mv=new ModelAndView();
		  List<Expense> listofexpenses = expensedao.
				  findByUserIdSorted(currentUser.getLoggedInUserId());
		  mv.addObject("listofexpenses",listofexpenses); 
		  mv.setViewName("ListOfExpenses");
		  return mv;
	 
	 }
		 
	 //--- REPORT ---

	@RequestMapping("/report")
	public ModelAndView expenseReport(){			
		
			List<Object[]> expenseReport = expensedao.
					findByUserIdOrderByExpenseAmountDesc(currentUser.getLoggedInUserId());

			for(Object[] data: expenseReport) {
				System.out.println(data[0]+" "+data[1]+" "+data[1].getClass().getName());
			}
			
			Map<String, Long> map=new LinkedHashMap<String, Long>();
			for(Object[] data: expenseReport) {
				map.put("'"+data[0]+"'", (Long)data[1]);
			}
			
			System.out.println(map.keySet());
			System.out.println(map.values());

			
			ModelAndView mv=new ModelAndView();
			
			mv.addObject("expenseReport",expenseReport); 
			mv.addObject("map", map);
			mv.setViewName("report");
			return mv;		  
		
		}

}
	
