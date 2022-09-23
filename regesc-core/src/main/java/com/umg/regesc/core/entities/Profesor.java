package com.umg.regesc.core.entities;

import javax.persistence.*;

@Entity
@Table(name = "profesor", schema = "regesc_simp2", indexes = {
        @Index(name = "fk_profesor_persona_idx", columnList = "persona_cui")
}, uniqueConstraints = {
        @UniqueConstraint(name = "carnetprofesor_UNIQUE", columnNames = {"carnetprofesor"})
})
public class Profesor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "carnetprofesor", nullable = false)
    private Integer carnet;

    @Column(name = "usuario", nullable = false, length = 45)
    private String usuario;

    @Column(name = "password", nullable = false, length = 45)
    private String password;

    @Column(name = "persona_cui", nullable = false)
    private Long personaCui;

    public Integer getCarnet() {
        return carnet;
    }

    public void setCarnet(Integer carnet) {
        this.carnet = carnet;
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

    public Long getPersonaCui() {
        return personaCui;
    }

    public void setPersonaCui(Long personaCui) {
        this.personaCui = personaCui;
    }

}
