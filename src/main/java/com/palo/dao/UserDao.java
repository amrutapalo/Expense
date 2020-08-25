package com.palo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.palo.model.User;

public interface UserDao extends JpaRepository<User, Long> {

}
