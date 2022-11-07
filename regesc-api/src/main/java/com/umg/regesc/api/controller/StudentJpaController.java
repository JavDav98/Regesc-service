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

import javax.annotation.security.RolesAllowed;
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

    @RolesAllowed({"list-student"})
    @GetMapping("/all")
    public List<Student> getAll() {
        return (List<Student>) estudianteRepository.findAll();
    }

    @RolesAllowed({"new-student"})
    @PostMapping("/new")
    public Student create(@RequestBody Student s) {
        return estudianteRepository.save(s);
    }

    @RolesAllowed({"update-student"})
    @PutMapping("/update")
    public Student update(@RequestBody Student estudiante) {
        return estudianteRepository.save(estudiante);
    }

    @RolesAllowed({"delete-student"})
    @DeleteMapping("/delete/{carnet}")
    public Student delete(@PathVariable("carnet")Integer carnet){
        Student s = estudianteRepository.findByCarnet(carnet);
        estudianteRepository.delete(s);
        return s;
    }

}
