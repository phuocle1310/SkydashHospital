package com.dht.controllers;

import com.dht.pojo.Department;
import com.dht.pojo.Doctor;
import com.dht.pojo.Patient;
import com.dht.service.IDepartmentsService;
import com.dht.service.IDoctorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;


@Controller
@RequestMapping("/doctors")
public class DoctorsController {
    @Autowired
    private IDoctorsService doctorsService;
    @Autowired
    private IDepartmentsService departmentsService;

    @RequestMapping()
    public String alldoctors(Model model) {
        model.addAttribute("doctors", this.doctorsService.getAllDoctor());
        return "doctors";
    }

    @PostMapping("/{doctorId}")
    public String deleteDoctor(@PathVariable(value = "doctorId") String doctorId) {
        this.doctorsService.deleteDoctor(doctorId);
        return "redirect:/doctors";
    }

    @GetMapping("/edit-doctor")
    public String editDoctorView(@RequestParam(value = "doctorId", defaultValue = "") String doctorId,
                                 Model model) {
        if(doctorId != null)
            model.addAttribute("doctor", this.doctorsService.getDoctorById(doctorId));
        model.addAttribute("departments", this.departmentsService.getAllDepartments());
        return "edit-doctor";
    }



    @PostMapping("/edit-doctor")
    public String editDoctor(@ModelAttribute("doctor") @Valid Doctor p, HttpServletRequest request) {

        MultipartFile img = p.getImg();
        String rootDir = request.getSession()
                .getServletContext().getRealPath("/");
        if (img != null && !img.isEmpty()) {
            try {
                img.transferTo(new File(rootDir + "resources/images/"
                        + p.getId() + ".jpg"));
            } catch (IOException | IllegalStateException ex) {
                System.err.println(ex.getMessage());
            }
        }

//            , BindingResult err) {
//        if(err.hasErrors())
//            return "redirect:/patients";
        if(!this.doctorsService.updateDoctor(p)) {
            return "redirect:/";
        }
        else
            return "redirect:/doctors";
    }

    @GetMapping("/add-doctor")
    public String addDoctorView(Model model) {
        model.addAttribute("adddoctor", new Doctor());
        model.addAttribute("departments", this.departmentsService.getAllDepartments());
        return "add-doctor";
    }

    @PostMapping("/add-doctor")
    public String addDoctor(@ModelAttribute("adddoctor") Doctor p) {
//        if(err.hasErrors())
//            return "redirect:/doctors";
        if(!this.doctorsService.addDoctor(p))
            return "redirect:/";
        return "redirect:/doctors";
    }
}
