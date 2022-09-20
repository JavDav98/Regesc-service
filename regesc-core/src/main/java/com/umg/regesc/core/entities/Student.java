/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umg.regesc.core.entities;

import com.fasterxml.jackson.annotation.JsonProperty.Access;
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
@Table(name = "student")
public class Student implements Serializable {


    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "carnetstudent")
    private Integer carnetstudent;
    @Column(name = "usuario")
    private String usuario;
    @Column(name = "password")
    private String password;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "studentCarnetstudent", fetch = FetchType.LAZY)
    private Set<Matriculaestudiante> matriculaestudianteSet;
    @JoinColumn(name = "persona_cui", referencedColumnName = "cui")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JsonProperty(access = Access.WRITE_ONLY)
    private Persona personaCui;

    public Integer getCarnetstudent() {
        return carnetstudent;
    }

    public void setCarnetstudent(Integer carnetstudent) {
        this.carnetstudent = carnetstudent;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<Matriculaestudiante> getMatriculaestudianteList() {
        return matriculaestudianteSet;
    }

    public void setMatriculaestudianteList(Set<Matriculaestudiante> matriculaestudianteList) {
        this.matriculaestudianteSet = matriculaestudianteList;
        for (Matriculaestudiante me: matriculaestudianteList) {
            me.setStudentCarnetstudent(this);
        }
    }

    public Persona getPersonaCui() {
        return personaCui;
    }

    public void setPersonaCui(Persona persona_cui) {
        this.personaCui = persona_cui;
    }
}
