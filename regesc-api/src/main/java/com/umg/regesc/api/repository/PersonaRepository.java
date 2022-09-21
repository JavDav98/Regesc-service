package com.umg.regesc.api.repository;

import com.umg.regesc.core.entities.Persona;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PersonaRepository extends JpaRepository<Persona, Long> {
     Persona findByCui(long  cui);
}
