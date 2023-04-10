package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.Book;
import com.example.demo.entity.Issue;
import com.example.demo.entity.User;

public interface Userservice {
	
	User getUserById(long id);
	
	List<Book> getAllBooks();
	
	List<User> getAllUsers();
	
	List<Issue> getAllIssued();
	
	List<Issue> getByUsername(String username);

}
