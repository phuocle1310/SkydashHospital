package com.dht.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.dht.pojo.Doctor;
import com.dht.service.IDepartmentsService;
import com.dht.service.IDoctorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/doctors")
public class DoctorsController {

    Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap("cloud_name", "ou-hcmc"
            , "api_key","969386329894481",
            "api_secret", "mg_eWP3Hbfzx-csv5H-9uPVcBA4"));

    @Autowired
    private IDoctorsService doctorsService;
    @Autowired
    private IDepartmentsService departmentsService;

    @RequestMapping()
    public String alldoctors(Model model) {
        model.addAttribute("doctors", this.doctorsService.getAllDoctor());
        model.addAttribute("departments", this.departmentsService.getAllDepartments());
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
    public String editDoctor(@RequestParam(value = "doctorId", defaultValue = "") String doctorId,
                             @ModelAttribute("doctor") @Valid Doctor p, BindingResult result
                             ) {
        if (!result.hasErrors()) {
//            MultipartFile img = p.getImg();
//            String rootDir = request.getSession().getServletContext().getRealPath("/");
//            if (img != null && !img.isEmpty()) {
//                try {
//                    img.transferTo(new File(rootDir + "resources/images/" + p.getId() + ".jpg"));
//                } catch (IOException | IllegalStateException ex) {
//                    System.err.println(ex.getMessage());
//                }
//            }

//            , BindingResult err) {
//        if(err.hasErrors())
//            return "redirect:/patients";
            if(!this.doctorsService.updateDoctor(p)) {
                return "redirect:/";
            }
            else
                return "redirect:/doctors";
        }
        return "edit-doctor";
    }

    @GetMapping("/add-doctor")
    public String addDoctorView(Model model) {
        model.addAttribute("adddoctor", new Doctor());
        model.addAttribute("departments", this.departmentsService.getAllDepartments());
        return "add-doctor";
    }

    @PostMapping("/add-doctor")
    public String addDoctor(@ModelAttribute("adddoctor") Doctor p, BindingResult err) {
//        if(err.hasErrors())
//            return "redirect:/doctors";
        Map upload = new HashMap();
        MultipartFile img = p.getImg();
        String path = "";
        if(img != null && img.isEmpty()) {
            try {
                upload = cloudinary.uploader().upload(img.getBytes(),ObjectUtils.asMap(
                        "public_id", "my_folder/" + p.getAccount().getUsername()));
                path = upload.get("url").toString();
                p.setImage(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        if(!this.doctorsService.addDoctor(p))
            return "redirect:/";
        return "redirect:/doctors";
    }
}
