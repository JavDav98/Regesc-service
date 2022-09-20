package com.umg.regesc.api.repository;

import com.umg.regesc.core.entities.Persona;
import org.springframework.data.jpa.repository.JpaRepository;

import java.lang.reflect.Array;

public interface PersonaRepository extends JpaRepository<Persona, Long> {
    Persona findByCui(Long cui);

/*
    Persona findByStudentListContaining(Integer carnet);
*/
}