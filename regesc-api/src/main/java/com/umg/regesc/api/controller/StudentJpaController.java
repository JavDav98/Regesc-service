/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umg.regesc.api.controller;

import java.io.Serializable;

import com.umg.regesc.api.repository.StudentRepository;
import com.umg.regesc.core.entities.Student;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/*
*//**
 *
 * @author javdav
 */
@CrossOrigin
@Api(value = "/", description = "REST Estudiante")
@RestController
@RequestMapping("/estudiante")
public class StudentJpaController implements Serializable {

    @Autowired
    StudentRepository estudianteRepository;

    @GetMapping
    @RequestMapping(
            value = "/all",
            produces = "application/json")
    public List<Student> getAll() {
        return (List<Student>) estudianteRepository.findAll();
    }

    @PostMapping("/new")
    public Student create(@RequestBody Student s) {
        return estudianteRepository.save(s);
    }

    @PutMapping("/update")
    public Student update(@RequestBody Student estudiante) {
        return estudianteRepository.save(estudiante);
    }

    /*@GetMapping("/find/by/carnet/{carnet}")
    public Student findByCarnet(@PathVariable("carnet") Integer carnet){
        return  estudianteRepository.findByCarnetstudent(carnet);
    }*/


}
