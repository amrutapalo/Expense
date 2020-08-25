package com.palo.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class CurrentUser {

	public Long loggedInUserId;
	
	
	public CurrentUser() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CurrentUser(Long id) {
		// TODO Auto-generated constructor stub
		this.loggedInUserId = id;
		
	}
	
	@Bean
	public Long getLoggedInUserId() {
		return loggedInUserId;
	}
	public void setLoggedInUserId(Long loggedInUserId) {
		this.loggedInUserId = loggedInUserId;
	}
	
	

}
