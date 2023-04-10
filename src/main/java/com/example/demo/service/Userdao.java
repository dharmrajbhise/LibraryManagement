package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Repo.BookRepo;
import com.example.demo.Repo.Issuerepo;
import com.example.demo.Repo.Userrepo;
import com.example.demo.entity.Book;
import com.example.demo.entity.Issue;
import com.example.demo.entity.User;

@Service
public class Userdao implements Userservice {
	
	@Autowired
	private Issuerepo repo3;
	
	@Autowired
	private BookRepo repo2;
	
	@Autowired
	private Userrepo repo;

	@Override
	public User getUserById(long id) {
		
		return repo.findById(id).orElse(null);
	}

	@Override
	public List<Book> getAllBooks() {
		
		return repo2.findAll();
	}

	@Override
	public List<User> getAllUsers() {
		
		return repo.findAll();
	}

	@Override
	public List<Issue> getAllIssued() {
		
		return repo3.findAll();
	}

	@Override
	public List<Issue> getByUsername(String username) {
		
		return repo3.findByUsername(username);
	}

}
