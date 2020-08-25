package com.palo.dao;


import java.util.Date;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.palo.model.Expense;

public interface ExpenseDao extends JpaRepository<Expense, Long>{

	List<Expense> findAll();
	List<Expense> findByUserId(Long userId);
	

	//@Query("from expense where id=?1 order by expensedate")
	//List<Expense> findByIdSorted(Long id);
	
	
}
