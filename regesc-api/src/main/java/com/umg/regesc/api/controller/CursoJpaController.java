/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umg.regesc.api.controller;

import com.umg.regesc.api.repository.CursoRepository;
import com.umg.regesc.core.entities.Curso;
import java.io.Serializable;
import java.util.List;

import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.security.RolesAllowed;

/**
 *
 * @author javdav
 */
@CrossOrigin
@Api(value = "/", description = "REST Curso")
@RestController
@RequestMapping("/curso")
public class CursoJpaController implements Serializable {


    @Autowired
    CursoRepository cursoRepository;

    @GetMapping("all")
    @RolesAllowed({"list-curso"})
    public List<Curso> getAll() {
        return (List<Curso>) cursoRepository.findAll();
    }

    @PostMapping("/new")
    @RolesAllowed({"new-curso"})
    public Curso create(@RequestBody Curso s) {
        return cursoRepository.save(s);
    }

    @PutMapping("/update")
    @RolesAllowed({"update-curso"})
    public Curso update(@RequestBody Curso c) {
        return cursoRepository.save(c);
    }

    @GetMapping("/find/by/idcurso/{idcurso}")
    @RolesAllowed({"findbyid-curso"})
    public Curso findByIdcurso(@PathVariable("idcurso") Integer idcurso){
        return  cursoRepository.findByIdcurso(idcurso);
    }
}
