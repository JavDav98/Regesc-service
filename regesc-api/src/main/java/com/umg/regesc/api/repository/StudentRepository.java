package com.umg.regesc.api.repository;

import com.umg.regesc.core.entities.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Integer> {
}
