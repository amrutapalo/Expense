package com.palo.dao;


import java.util.Date;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.palo.model.Expense;

public interface ExpenseDao extends JpaRepository<Expense, Long>{

	List<Expense> findAll();
	List<Expense> findByUserId(Long userId);
	
	@Query("select e from Expense e where e.userId=?1 order by e.expensedate desc")
	List<Expense> findByUserIdSorted(Long userId);
	
	//select category,sum(expense_amount) from expense where user_id=1 group by category;

	@Query("select e.category,SUM(e.expenseAmount) as exp from Expense e where e.userId=?1 "
			+ "group by e.category "
			+ "order by exp desc")
	List<Object[]> findByUserIdOrderByExpenseAmountDesc(Long userId);
	
}
 