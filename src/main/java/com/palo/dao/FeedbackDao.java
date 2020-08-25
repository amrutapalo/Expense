package com.palo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.palo.model.Feedback;

public interface FeedbackDao extends JpaRepository<Feedback, Long> {

}
