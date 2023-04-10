package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Issue;

@Repository
public interface Issuerepo extends JpaRepository<Issue, Long>{

	List<Issue> findByUsername(String username);

}
