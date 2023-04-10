package com.example.demo.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "books")
public class Book {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "Book_name")
	private String name;
	
	@Column(name = "author")
	private String author;
	
	@Column(name = "isbn")
	private long isbn;
	
	@Column(name = "published_year")
	private long p_year;
	
	@Column(name = "remarks")
	private String remarks;
	
	public Book() {}

	public Book(String name,String author, long isbn, long p_year, String remarks) {
		super();
		this.name = name;
		this.author = author;
		this.isbn = isbn;
		this.p_year = p_year;
		this.remarks = remarks;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public long getIsbn() {
		return isbn;
	}

	public void setIsbn(long isbn) {
		this.isbn = isbn;
	}

	public long getP_year() {
		return p_year;
	}

	public void setP_year(long p_year) {
		this.p_year = p_year;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", author=" + author + ", isbn=" + isbn + ", p_year=" + p_year
				+ ", remarks=" + remarks + "]";
	}
	
	
	
	
	
	

}
