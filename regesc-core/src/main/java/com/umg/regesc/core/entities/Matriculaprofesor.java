package com.umg.regesc.core.entities;

import javax.persistence.*;

@Entity
@Table(name = "matriculaprofesor", schema = "regesc_simp2", indexes = {
        @Index(name = "fk_matriculaprofesor_profesor1_idx", columnList = "profesor_carnetprofesor"),
        @Index(name = "fk_matriculaprofesor_curso1_idx", columnList = "curso_idcurso")
})
public class Matriculaprofesor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idmatriculaprofesor", nullable = false)
    private Integer id;

    @Column(name = "curso_idcurso", nullable = false)
    private Integer cursoIdcurso;

    @Column(name = "profesor_carnetprofesor", nullable = false)
    private Integer profesorCarnetprofesor;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCursoIdcurso() {
        return cursoIdcurso;
    }

    public void setCursoIdcurso(Integer cursoIdcurso) {
        this.cursoIdcurso = cursoIdcurso;
    }

    public Integer getProfesorCarnetprofesor() {
        return profesorCarnetprofesor;
    }

    public void setProfesorCarnetprofesor(Integer profesorCarnetprofesor) {
        this.profesorCarnetprofesor = profesorCarnetprofesor;
    }

}
