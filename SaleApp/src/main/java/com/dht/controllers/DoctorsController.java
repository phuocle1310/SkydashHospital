package com.dht.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/doctors")
public class DoctorsController {
//    @Autowired
//    private

    @RequestMapping()
    public String alldoctors() {
        return "doctors";
    }

    @RequestMapping("/edit-doctor")
    public String editdoctor() {
        return "edit-doctor";
    }

    @RequestMapping("/add-doctor")
    public String adddoctor() {
        return "add-doctor";
    }
}
