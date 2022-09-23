/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umg.regesc.api.controller;

import java.io.Serializable;

import com.umg.regesc.api.repository.PersonaRepository;
import com.umg.regesc.api.repository.ProfesorRepository;
import com.umg.regesc.core.entities.Persona;
import com.umg.regesc.core.entities.Profesor;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 *
 * @author javdav
 */
@CrossOrigin
@Api(value = "/", description = "REST Profesor")
@RestController
@RequestMapping("/profesor")
public class ProfesorJpaController implements Serializable {

    @Autowired
    ProfesorRepository profesorRepository;
    @Autowired
    PersonaRepository personaRepository;

    @CrossOrigin
    @RequestMapping(
            value = "/all",
            method = RequestMethod.GET,
            produces = "application/json")
    public List<Profesor> getAll() {
        return (List<Profesor>) profesorRepository.findAll();
    }

    @RequestMapping(
            value = "/",
            method = RequestMethod.POST,
            produces = "application/json")
    public Profesor create(@RequestBody Profesor profesor) {
        profesor = profesorRepository.save(profesor);
        return profesor;
    }


    @RequestMapping(
            value = "/",
            method = RequestMethod.PUT,
            produces = "application/json")
    public Profesor update(@RequestBody Profesor profesor) {
        profesor = profesorRepository.save(profesor);
        return profesor;
    }

    @GetMapping("/find/by/carnet/{carnet}")
    public Profesor findByCarnet(@PathVariable("carnet") Integer carnet){
        return  profesorRepository.findByCarnet(carnet);
    }

    @GetMapping("/datos/completos/{carnet}")
    public Persona datosFindByCarnet(@PathVariable("carnet") Integer carnet){
        Profesor p = profesorRepository.findByCarnet(carnet);
        return  personaRepository.findByCui(p.getPersonaCui());
    }
}
