package com.bala.SpringBoot6.StudentCRud6.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bala.SpringBoot6.StudentCRud6.domain.Student;
import com.bala.SpringBoot6.StudentCRud6.repository.StudentRepository;

@Service
public class StudentService {
	@Autowired
	private StudentRepository repo;
	
	public List<Student> listAll(){
		return repo.findAll();
	}
	public void save(Student std) {
		repo.save(std);
	}
	public Student get(long id) {
		return repo.findById(id).get();
	}
	public void delete(long id) {
		repo.deleteById(id);
	}
}
