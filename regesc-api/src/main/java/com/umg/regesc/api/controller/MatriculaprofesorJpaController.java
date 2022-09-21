/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umg.regesc.api.controller;

import java.io.Serializable;

import com.umg.regesc.api.repository.MatriculaprofesorRepository;
import com.umg.regesc.core.entities.Matriculaprofesor;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 *
 * @author javdav
 */
@CrossOrigin
@Api(value = "/", description = "REST Matriculaprofesor")
@RestController
@RequestMapping("/matriculaprofesor")
public class MatriculaprofesorJpaController implements Serializable {

    @Autowired
    MatriculaprofesorRepository matriculaprofesorRepository;

    @CrossOrigin
    @RequestMapping(
            value = "/all",
            method = RequestMethod.GET,
            produces = "application/json")
    public List<Matriculaprofesor> getAll() {
        return (List<Matriculaprofesor>) matriculaprofesorRepository.findAll();
    }

    @RequestMapping(
            value = "/",
            method = RequestMethod.POST,
            produces = "application/json")
    public Matriculaprofesor create(@RequestBody Matriculaprofesor matriculaprofesor) {
        matriculaprofesor = matriculaprofesorRepository.save(matriculaprofesor);
        return matriculaprofesor;
    }


    @RequestMapping(
            value = "/",
            method = RequestMethod.PUT,
            produces = "application/json")
    public Matriculaprofesor update(@RequestBody Matriculaprofesor matriculaprofesor) {
        matriculaprofesor = matriculaprofesorRepository.save(matriculaprofesor);
        return matriculaprofesor;
    }
}
