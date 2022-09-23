package com.umg.regesc.core.entities;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;

@Entity
@Table(name = "persona", schema = "regesc_simp2", uniqueConstraints = {
        @UniqueConstraint(name = "cui_UNIQUE", columnNames = {"cui"})
})
public class Persona {
    @Id
    @Column(name = "cui", nullable = false)
    private Long cui;

    @Column(name = "nombre", nullable = false, length = 45)
    private String nombre;

    @Column(name = "apellido", nullable = false, length = 45)
    private String apellido;

    @Column(name = "telefono", nullable = false)
    private Integer telefono;

    @Column(name = "direccion", nullable = false, length = 45)
    private String direccion;

    @Column(name = "nacimiento", nullable = false, length = 45)
    private Date nacimiento;

    @Column(name = "email", nullable = false, length = 45)
    private String email;

    @OneToMany(mappedBy = "personaCui")
    private Set<Student> students = new LinkedHashSet<>();

    @OneToMany(mappedBy = "personaCui")
    private Set<Profesor> profesors = new LinkedHashSet<>();

    public Long getCui() {
        return cui;
    }

    public void setCui(Long cui) {
        this.cui = cui;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Integer getTelefono() {
        return telefono;
    }

    public void setTelefono(Integer telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public Date  getNacimiento() {
        return nacimiento;
    }

    public void setNacimiento(Date  nacimiento) {
        this.nacimiento = nacimiento;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Set<Student> getStudents() {
        return students;
    }

    public void setStudents(Set<Student> students) {
        this.students = students;
    }

    public Set<Profesor> getProfesors() {
        return profesors;
    }

    public void setProfesors(Set<Profesor> profesors) {
        this.profesors = profesors;
    }

}
