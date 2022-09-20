/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umg.regesc.api.controller;

import java.io.Serializable;

import com.umg.regesc.api.controller.exceptions.IllegalOrphanException;
import com.umg.regesc.api.controller.exceptions.NonexistentEntityException;
import com.umg.regesc.api.controller.exceptions.PreexistingEntityException;
import com.umg.regesc.api.repository.StudentRepository;
import com.umg.regesc.core.entities.Matriculaestudiante;
import com.umg.regesc.core.entities.Persona;
import com.umg.regesc.core.entities.Student;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
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

    @GetMapping("/find/by/carnet/{carnet}")
    public Student findByCarnet(@PathVariable("carnet") Integer carnet){
        return  estudianteRepository.findByCarnetstudent(carnet);
    }


}
