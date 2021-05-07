package com.dht.controllers;

import com.dht.service.IAccountsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class LoginController {
    @Autowired
    private IAccountsService accountsService;
}
