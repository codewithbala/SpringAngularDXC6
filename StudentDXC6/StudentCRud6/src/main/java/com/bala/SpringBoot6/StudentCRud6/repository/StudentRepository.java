package com.bala.SpringBoot6.StudentCRud6.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bala.SpringBoot6.StudentCRud6.domain.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {

}
