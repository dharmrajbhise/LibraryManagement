package com.example.demo.entity;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "issued_books")
public class Issue {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private String username;
	
	private String book_name;
	
	private String borrow_date;
	
	public Issue() {}

	public Issue(String username,String book_name, String borrow_date) {
		super();
		this.username = username;
		this.book_name = book_name;
		this.borrow_date = borrow_date;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getBorrow_date() {
		return borrow_date;
	}

	public void setBorrow_date(String borrow_date) {
		this.borrow_date = borrow_date;
	}

	@Override
	public String toString() {
		return "Issue [id=" + id + ", username=" + username + ", book_name=" + book_name + ", borrow_date="
				+ borrow_date + "]";
	}

}
