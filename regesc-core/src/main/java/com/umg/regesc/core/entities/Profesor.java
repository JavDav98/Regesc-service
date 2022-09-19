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
@Table(name = "profesor")
public class Profesor implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "carnetprofesor")
    private Integer carnetprofesor;
    @Column(name = "usuario")
    private String usuario;
    @Column(name = "password")
    private String password;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "profesorCarnetprofesor", fetch = FetchType.LAZY)
    private Set<Matriculaprofesor> matriculaprofesorSet;
    @JoinColumn(name = "persona_cui", referencedColumnName = "cui")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JsonProperty(access = Access.WRITE_ONLY)
    private Persona personaCui;

    public Integer getCarnetprofesor() {
        return carnetprofesor;
    }

    public void setCarnetprofesor(Integer carnetprofesor) {
        this.carnetprofesor = carnetprofesor;
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

    public Set<Matriculaprofesor> getMatriculaprofesorList() {
        return matriculaprofesorSet;
    }

    public void setMatriculaprofesorList(Set<Matriculaprofesor> matriculaprofesorList) {
        this.matriculaprofesorSet = matriculaprofesorList;
        for (Matriculaprofesor mp: matriculaprofesorList){
            mp.setProfesorCarnetprofesor(this);
        }
    }

    public Persona getPersonaCui() {
        return personaCui;
    }

    public void setPersonaCui(Persona persona_cui) {
        this.personaCui = persona_cui;
    }
}
