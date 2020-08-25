package com.palo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Feedback {
	
	@Id @GeneratedValue
	private Long id;
	private String feedback;
	
	@ManyToOne
	private User user;

	public Feedback() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	

}
