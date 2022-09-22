package com.umg.regesc.core.entities;

import javax.persistence.*;
import java.util.LinkedHashSet;
import java.util.Set;

@Entity
@Table(name = "curso", schema = "regesc_simp")
public class Curso {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idcurso", nullable = false)
    private Integer idcurso;

    @Column(name = "nombre", nullable = false, length = 45)
    private String nombre;

    @Column(name = "seccion", nullable = false, length = 45)
    private String seccion;

    @Column(name = "horario", nullable = false, length = 45)
    private String horario;

    @OneToMany(mappedBy = "cursoIdcurso")
    private Set<Matriculaprofesor> matriculaprofesors = new LinkedHashSet<>();

    @OneToMany(mappedBy = "cursoIdcurso")
    private Set<Matriculaestudiante> matriculaestudiantes = new LinkedHashSet<>();

    public Integer getIdcurso() {
        return idcurso;
    }

    public void setIdcurso(Integer idcurso) {
        this.idcurso = idcurso;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSeccion() {
        return seccion;
    }

    public void setSeccion(String seccion) {
        this.seccion = seccion;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public Set<Matriculaprofesor> getMatriculaprofesors() {
        return matriculaprofesors;
    }

    public void setMatriculaprofesors(Set<Matriculaprofesor> matriculaprofesors) {
        this.matriculaprofesors = matriculaprofesors;
    }

    public Set<Matriculaestudiante> getMatriculaestudiantes() {
        return matriculaestudiantes;
    }

    public void setMatriculaestudiantes(Set<Matriculaestudiante> matriculaestudiantes) {
        this.matriculaestudiantes = matriculaestudiantes;
    }

}
