/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umg.regesc.core.entities;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
import lombok.Data;

import java.io.Serializable;
import javax.persistence.*;
/*

*/
/**
 *
 * @author javdav
 */

@Entity
@Data
@Table(name = "matriculaprofesor")
public class Matriculaprofesor implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idmatriculaprofesor")
    private Integer idmatriculaprofesor;
    @JoinColumn(name = "curso_idcurso", referencedColumnName = "idcurso")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JsonProperty(access = Access.WRITE_ONLY)
    private Curso cursoIdcurso;
    @JoinColumn(name = "profesor_carnetprofesor", referencedColumnName = "carnetprofesor")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JsonProperty(access = Access.WRITE_ONLY)
    private Profesor profesorCarnetprofesor;

    public Integer getIdmatriculaprofesor() {
        return idmatriculaprofesor;
    }

    public void setIdmatriculaprofesor(Integer idmatriculaprofesor) {
        this.idmatriculaprofesor = idmatriculaprofesor;
    }

    public Curso getCursoIdcurso() {
        return cursoIdcurso;
    }

    public void setCursoIdcurso(Curso curso_idcurso) {
        this.cursoIdcurso = curso_idcurso;
    }

    public Profesor getProfesorCarnetprofesor() {
        return profesorCarnetprofesor;
    }

    public void setProfesorCarnetprofesor(Profesor profesor_carnetprofesor) {
        this.profesorCarnetprofesor = profesor_carnetprofesor;
    }
}
