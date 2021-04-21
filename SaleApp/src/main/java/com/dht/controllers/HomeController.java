/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dht.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
public class HomeController {

    @RequestMapping("/")
    public String index() {
        return "index";
    }


    /**
     *
     * Cac trang admin danh cho doctors
     *
     */

    @RequestMapping("/all-doctors")
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

    /**
     *
     * Cac trang admin danh cho patients
     */

    @RequestMapping("/all-patients")
    public String allpatients() {
        return "patients";
    }

    @RequestMapping("/edit-patient")
    public String editpatient() {
        return "edit-patient";
    }

    @RequestMapping("/add-patient")
    public String addpatient() {
        return "add-patient";
    }

    /**
     *  Trang Login va Forgot password
     */

    @RequestMapping("/login")
    public String login() {
        return "login";
    }
}
