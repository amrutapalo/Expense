package com.palo.model;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="expense")
public class Expense {
	
	//Record ID(PK), title,desc,category, expenseAmount,expenseDate, userId, NON DB user


	@Id @GeneratedValue
	private Long id;
	private String title;
	private String descripton; //Visiting Delhi or went for site seeing
	private String category;
	private Long expenseAmount;
	private Date expensedate;//Timestamp
	private Long userId;


	public Long getExpenseAmount() {
		return expenseAmount;
	}

	public void setExpenseAmount(Long expenseAmount) {
		this.expenseAmount = expenseAmount;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	//constructor
	public Expense() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Expense(Long id, String title, String descripton, String category, Long expenseAmount, Date expensedate,
			Long userId) {
		super();
		this.id = id;
		this.title = title;
		this.descripton = descripton;
		this.category = category;
		this.expenseAmount = expenseAmount;
		this.expensedate = expensedate;
		this.userId = userId;
	}

	public Date getExpensedate() {
		return expensedate;
	}

	public void setExpensedate(Date expensedate) {
		this.expensedate = expensedate;
	}

	public String getDescripton() {
		return descripton;
	}

	public void setDescripton(String descripton) {
		this.descripton = descripton;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	
	
}
