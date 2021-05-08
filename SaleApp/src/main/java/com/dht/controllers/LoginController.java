package com.dht.controllers;

import com.dht.service.IAccountsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private IAccountsService accountsService;

    @RequestMapping()
    public String login() {
        return "login";
    }
}
