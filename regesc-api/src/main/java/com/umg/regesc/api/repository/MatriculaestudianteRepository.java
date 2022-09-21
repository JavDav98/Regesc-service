package com.umg.regesc.api.repository;

import com.umg.regesc.core.entities.Matriculaestudiante;
import com.umg.regesc.core.entities.Persona;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MatriculaestudianteRepository extends JpaRepository<Matriculaestudiante, Integer> {
    List<Matriculaestudiante> findByStudentCarnetstudent(long  cui);
}
