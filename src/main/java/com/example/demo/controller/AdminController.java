package com.example.demo.controller;

import java.util.List;

import javax.persistence.metamodel.StaticMetamodel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Repo.BookRepo;
import com.example.demo.Repo.Issuerepo;
import com.example.demo.Repo.Userrepo;
import com.example.demo.entity.Book;
import com.example.demo.entity.User;
import com.example.demo.service.Userservice;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private Issuerepo repo3;
	
	@Autowired
	private BookRepo repo2;
	
	@Autowired
	private Userservice us;
	
	@Autowired
	private Userrepo repo;

	@RequestMapping("/deleteUser{id}")
	public String UserEdited(@PathVariable long id) {
		
		repo.deleteById(id);
		return "userEdited";
	}
	@RequestMapping("/addNew")
	public String allBooks() {
		
		return "AddBook";
	}
	
	@RequestMapping("/BookAdded")
	public String BookAdded(@ModelAttribute Book book) {
		
		repo2.save(book);
		return "BookAdded";
	}
	
	@RequestMapping("/allBooks")
	public String AllBooks(Model model) {
		
		List<Book> books = us.getAllBooks();
		model.addAttribute("book", books);
		return "AllBooks";
	}
	
	@RequestMapping("/deleteBook{id}")
	public String deleteBook(@PathVariable long id) {
		
		repo2.deleteById(id);
		return "BookDelete";
	}
	
	@RequestMapping("/Issue")
	public String Issue(Model model) {
		
		List<User> users = us.getAllUsers();
		model.addAttribute("user", users);
		List<Book> book = us.getAllBooks();
		model.addAttribute("book", book);
		return "Issue";
	}
	
	@RequestMapping("/BookIssued")
	public String Issued(@ModelAttribute com.example.demo.entity.Issue issue) {
		
		repo3.save(issue);
		return "Issued";
	}
	
	@RequestMapping("/IssuedBooks")
	public String IssuedBooks(Model model) {
		
		List<com.example.demo.entity.Issue> books = us.getAllIssued();
		model.addAttribute("booked", books);
		return "IssuedBooks";
	}
}
