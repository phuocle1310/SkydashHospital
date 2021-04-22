package com.dht.controllers;

import com.dht.service.IPatientsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.ws.rs.POST;

@Controller
@RequestMapping("/home/patients")
public class PatientsController {

    @Autowired
    private IPatientsService patientsService;

    @RequestMapping()
    public String allpatients(Model model) {
        model.addAttribute("patients", this.patientsService.getAllPatient());
        return "patients";
    }

    @PostMapping("/{patientId}")
    public String deletePatient(@PathVariable(value = "patientId") String patientId) {
        this.patientsService.deletePatient(patientId);
        return "redirect:/home/patients";
    }

    @RequestMapping("/edit-patient")
    public String editpatient() {
        return "edit-patient";
    }

    @RequestMapping("/add-patient")
    public String addpatient() {
        return "add-patient";
    }
}
