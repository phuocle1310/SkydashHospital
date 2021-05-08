package com.dht.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/appointments")
public class AppointmentController {
    @RequestMapping()
    public String allAppointments() {
        return "appointments";
    }
}
