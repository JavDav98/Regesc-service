/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umg.regesc.api.controller;

import com.umg.regesc.api.repository.CursoRepository;
import com.umg.regesc.api.repository.MatriculaestudianteRepository;
import com.umg.regesc.core.entities.Curso;
import com.umg.regesc.core.entities.Matriculaestudiante;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author javdav
 */
@CrossOrigin
@Api(value = "/", description = "REST Matriculaestudiante")
@RestController
@RequestMapping("/matriculaestudiante")
public class MatriculaestudianteJpaController implements Serializable {

    @Autowired
    MatriculaestudianteRepository matriculaestudianteRepository;
    @Autowired
    CursoRepository cursoRepository;

    @CrossOrigin
    @RequestMapping(
            value = "/all",
            method = RequestMethod.GET,
            produces = "application/json")
    public List<Matriculaestudiante> getAll() {
        return (List<Matriculaestudiante>) matriculaestudianteRepository.findAll();
    }

    @RequestMapping(
            value = "/",
            method = RequestMethod.POST,
            produces = "application/json")
    public Matriculaestudiante create(@RequestBody Matriculaestudiante matriculaestudiante) {
        matriculaestudiante = matriculaestudianteRepository.save(matriculaestudiante);
        return matriculaestudiante;
    }


    @RequestMapping(
            value = "/",
            method = RequestMethod.PUT,
            produces = "application/json")
    public Matriculaestudiante update(@RequestBody Matriculaestudiante matriculaestudiante) {
        matriculaestudiante = matriculaestudianteRepository.save(matriculaestudiante);
        return matriculaestudiante;
    }

    @GetMapping("/find/by/carnet/{carnet}")
    public List<Matriculaestudiante> findByCui(@PathVariable("carnet") Long carnet){
        return  matriculaestudianteRepository.findByStudentCarnetstudent(carnet);
    }

    @GetMapping("/cursos/inscrito/{carnet}")
    public List<Curso> cursosInscrito(@PathVariable("carnet") Long carnet){
        List<Matriculaestudiante> lms = matriculaestudianteRepository.findByStudentCarnetstudent(carnet);
        List<Curso> cursos = new ArrayList<>();
        for (Matriculaestudiante ms: lms) {
            cursos.add(cursoRepository.findByIdcurso(ms.getCursoIdcurso()));
        }
        return  cursos;
    }
}
