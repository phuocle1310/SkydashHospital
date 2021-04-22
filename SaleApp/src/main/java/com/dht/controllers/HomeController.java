/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dht.controllers;


import com.dht.service.IPatientsService;
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
@RequestMapping("/home")
public class HomeController {

    @Autowired
    private IPatientsService patientsService;

    @RequestMapping()
    public String index() {
        return "index";
    }


    /**
     *
     * Cac trang admin danh cho doctors
     *
     */



    /**
     *
     * Cac trang admin danh cho patients
     */




    /**
     *  Trang Login va Forgot password
     */

    @RequestMapping("/login")
    public String login() {
        return "login";
    }
}
