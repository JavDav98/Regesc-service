/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umg.regesc.api.controller;

import com.umg.regesc.api.repository.PersonaRepository;
import com.umg.regesc.core.entities.Persona;
import java.io.Serializable;
import java.util.List;

import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 *
 * @author javdav
 */
@CrossOrigin
@Api(value = "/", description = "REST Persona")
@RestController
@RequestMapping("/persona")
public class PersonaJpaController implements Serializable {


    @Autowired
    PersonaRepository perosnaRepository;

    @GetMapping
    @RequestMapping(
            value = "/all",
            produces = "application/json")
    public List<Persona> getAll() {
        return (List<Persona>) perosnaRepository.findAll();
    }

    @PostMapping("/new")
    public Persona create(@RequestBody Persona s) {
        return perosnaRepository.save(s);
    }

    @PutMapping("/update")
    public Persona update(@RequestBody Persona p) {
        return perosnaRepository.save(p);
    }

    @GetMapping("/find/by/cui/{cui}")
    public Persona findByCui(@PathVariable("cui") Long cui){
        return  perosnaRepository.findByCui(cui);
    }
}
