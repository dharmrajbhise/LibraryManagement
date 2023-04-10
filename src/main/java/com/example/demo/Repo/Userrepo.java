package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.User;

@Repository
public interface Userrepo extends JpaRepository<User, Long> {

	User findByUsername(String username);

}
