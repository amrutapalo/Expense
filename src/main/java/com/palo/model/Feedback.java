package com.palo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Feedback {
	
	@Id @GeneratedValue
	private Long id;
	private String feedbackText;
	private Long userId;
	

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Feedback() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public String getFeedbackText() {
		return feedbackText;
	}

	public void setFeedback(String feedbackText) {
		this.feedbackText = feedbackText;
	}
	

}
