package com.umg.regesc.api.repository;

import com.umg.regesc.core.entities.Curso;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CursoRepository extends JpaRepository<Curso, Integer> {
    Curso findByIdcurso(Integer idcurso);
}