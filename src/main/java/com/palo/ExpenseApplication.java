package com.palo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.palo.model.CurrentUser;
import com.palo.model.Expense;

@SpringBootApplication
public class ExpenseApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext context= SpringApplication.run(ExpenseApplication.class, args);
		
		Expense expense = context.getBean(Expense.class);
	}

}


