package com.dht.controllers;

import com.dht.pojo.Patient;
import com.dht.service.IPatientsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


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

    @GetMapping("/edit-patient")
    public String editPatientView(@RequestParam(value = "patientId", defaultValue = "") String patientId, Model model) {
        if(patientId != null)
            model.addAttribute("patient", this.patientsService.getPatientById(patientId));
        return "edit-patient";
    }



    @PostMapping("/edit-patient")
    public String editpatient(@ModelAttribute(value = "patient") @Valid Patient p, BindingResult err) {
        if(err.hasErrors())
            return "redirect:/home/doctors";
        if(!this.patientsService.updatePatient(p)) {
            return "redirect:/home";
        }
        else
            return "redirect:/home/patients";
    }

    @GetMapping("/add-patient")
    public String addpatient(@ModelAttribute("addpatient") Patient p, Model model) {
        if(!this.patientsService.addPatient(p))
            return "home";
        else
            model.addAttribute("addpatient", new Patient());
        return "add-patient";
    }
}
