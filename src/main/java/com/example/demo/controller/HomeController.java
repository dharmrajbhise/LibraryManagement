package com.example.demo.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Repo.BookRepo;
import com.example.demo.Repo.Userrepo;
import com.example.demo.entity.Issue;
import com.example.demo.entity.User;
import com.example.demo.service.Userservice;

@Controller
public class HomeController {
	
	@Autowired
	private Userservice us;
	
	@Autowired
	private BookRepo repo2;
	
	@Autowired
	private Userrepo repo;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@RequestMapping("/")
	public String home() {
		
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping("/register")
	public String register() {
		
		return "register";
	}
	
	@RequestMapping("/success")
	public String success(User u1) {
		
		String password = passwordEncoder.encode(u1.getPassword());
		u1.setPassword(password);
		repo.save(u1);
		return "success";
	}
	
	@RequestMapping("/user")
	public String user(Model model,Principal principal) {
		
		String username = principal.getName();
		model.addAttribute("username", username);
		
		List<Issue> books = us.getByUsername(username);
		model.addAttribute("book", books);
		return "user";
	}
	
	@RequestMapping("/admin")
	public String admin(Principal principal,Model model) {
		
		String username = principal.getName();
		model.addAttribute("username", username);
		List<User> u1	= repo.findAll();
		model.addAttribute("data", u1);
		
		return "admin";
	}

}
