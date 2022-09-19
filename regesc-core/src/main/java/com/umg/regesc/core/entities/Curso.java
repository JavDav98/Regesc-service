/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umg.regesc.core.entities;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.*;
/*

*/
/**
 *
 * @author javdav
 */

@Entity
@Data
@Table(name = "curso")
public class Curso implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcurso")
    private Integer idcurso;
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @Column(name = "seccion")
    private String seccion;
    @Basic(optional = false)
    @Column(name = "horario")
    private String horario;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cursoIdcurso", fetch = FetchType.LAZY)
    private Set<Matriculaestudiante> matriculaestudianteSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cursoIdcurso", fetch = FetchType.LAZY)
    private Set<Matriculaprofesor> matriculaprofesorSet;

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

    public Set<Matriculaestudiante> getMatriculaestudianteList() {
        return matriculaestudianteSet;
    }

    public void setMatriculaestudianteList(Set<Matriculaestudiante> matriculaestudianteList) {
        this.matriculaestudianteSet = matriculaestudianteList;
        for (Matriculaestudiante me: matriculaestudianteList ) {
            me.setCursoIdcurso(this);
        }
    }

    public Set<Matriculaprofesor> getMatriculaprofesorList() {
        return matriculaprofesorSet;
    }

    public void setMatriculaprofesorList(Set<Matriculaprofesor> matriculaprofesorList) {
        this.matriculaprofesorSet = matriculaprofesorList;
        for (Matriculaprofesor mp: matriculaprofesorList){
            mp.setCursoIdcurso(this);
        }
    }
}
