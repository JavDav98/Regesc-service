package com.umg.regesc.core.entities;

import javax.persistence.*;

@Entity
@Table(name = "matriculaestudiante", schema = "regesc_simp2", indexes = {
        @Index(name = "fk_matriculaestudiante_curso1_idx", columnList = "curso_idcurso"),
        @Index(name = "fk_matriculaestudiante_student1_idx", columnList = "student_carnetstudent")
})
public class Matriculaestudiante {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idmatriculaestudiante", nullable = false)
    private Integer id;

    @Column(name = "nota1", nullable = false, length = 45)
    private String nota1;

    @Column(name = "nota2", nullable = false, length = 45)
    private String nota2;

    @Column(name = "nota3", nullable = false, length = 45)
    private String nota3;

    @Column(name = "notafinal", nullable = false, length = 45)
    private String notafinal;

    @Column(name = "curso_idcurso", nullable = false)
    private Integer cursoIdcurso;

    @Column(name = "student_carnetstudent", nullable = false)
    private Integer studentCarnetstudent;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer getCursoIdcurso() {
        return cursoIdcurso;
    }

    public void setCursoIdcurso(Integer cursoIdcurso) {
        this.cursoIdcurso = cursoIdcurso;
    }

    public Integer getStudentCarnetstudent() {
        return studentCarnetstudent;
    }

    public void setStudentCarnetstudent(Integer studentCarnetstudent) {
        this.studentCarnetstudent = studentCarnetstudent;
    }

}
