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
@Table(name = "matriculaestudiante" , uniqueConstraints = {@UniqueConstraint(columnNames = {"idmatriculaestudiante"})})
public class Matriculaestudiante implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idmatriculaestudiante")
    private Integer idmatriculaestudiante;
    @Basic(optional = false)
    @Column(name = "nota1")
    private String nota1;
    @Basic(optional = false)
    @Column(name = "nota2")
    private String nota2;
    @Basic(optional = false)
    @Column(name = "nota3")
    private String nota3;
    @Basic(optional = false)
    @Column(name = "notafinal")
    private String notafinal;
    @JoinColumn(name = "curso_idcurso", referencedColumnName = "idcurso")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JsonProperty(access = Access.WRITE_ONLY)
    private Curso cursoIdcurso;
    @JoinColumn(name = "student_carnetstudent", referencedColumnName = "carnetstudent")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JsonProperty(access = Access.WRITE_ONLY)
    private Student studentCarnetstudent;

    public Integer getIdmatriculaestudiante() {
        return idmatriculaestudiante;
    }

    public void setIdmatriculaestudiante(Integer idmatriculaestudiante) {
        this.idmatriculaestudiante = idmatriculaestudiante;
    }

    public String getNota1() {
        return nota1;
    }

    public void setNota1(String nota1) {
        this.nota1 = nota1;
    }

    public String getNota2() {
        return nota2;
    }

    public void setNota2(String nota2) {
        this.nota2 = nota2;
    }

    public String getNota3() {
        return nota3;
    }

    public void setNota3(String nota3) {
        this.nota3 = nota3;
    }

    public String getNotafinal() {
        return notafinal;
    }

    public void setNotafinal(String notafinal) {
        this.notafinal = notafinal;
    }

    public Curso getCursoIdcurso() {
        return cursoIdcurso;
    }

    public void setCursoIdcurso(Curso curso_idcurso) {
        this.cursoIdcurso = curso_idcurso;
    }

    public Student getStudentCarnetstudent() {
        return studentCarnetstudent;
    }

    public void setStudentCarnetstudent(Student student_carnetstudent) {
        this.studentCarnetstudent = student_carnetstudent;
    }
}
