package com.dht.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class ClientController {
    @RequestMapping()
    public String index2() {
        return "index2";
    }
}
