package com.oracle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    @RequestMapping("/login")
    public String  login(@RequestParam("username") String uname, @RequestParam("passwd") String password, Model model){
        System.out.println("login"+uname+password);
      //  model.addAttribute("mainpage","list.jsp");
        return "dashboard";
    }
}
