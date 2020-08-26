package com.palo.dao;


import java.util.Date;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.palo.model.Expense;

public interface ExpenseDao extends JpaRepository<Expense, Long>{

	List<Expense> findAll();
	List<Expense> findByUserId(Long userId);
	
	//List<Expense> findByUserIdOrderByExpensedate(Long userId);
	@Query("select e from Expense e where e.userId=?1 order by e.expensedate desc")
	List<Expense> findByUserIdSorted(Long userId);
	
	//@Query("select e from Expense order by e.expensedate")
	//List<Expense> findByUserIdOrderByExpensedateDesc(Long userId);

	//findFirst5ByTitleOrderByTitleAsc
	
}
