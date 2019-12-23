package com.ccc.crm.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ToPageController {

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/custmanager")
    public String custManager() {
        return "cust/custmanage";
    }

    @RequestMapping("/custinfo")
    public String custinfo() {
        return "cust/custinfo";
    }




}
