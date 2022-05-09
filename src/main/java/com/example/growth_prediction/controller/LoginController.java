package com.example.growth_prediction.controller;

import com.example.growth_prediction.common.DoctorDAO;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/main")
    public String main(Model model, String doctor_id, String doctor_pw) {
        int result = DoctorDAO.login(doctor_id, doctor_pw);
        model.addAttribute("result", result);
        if (result == 1) {
            return "main";
        }

        return "redirect:/";
    }
}
