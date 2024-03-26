package com.my_bank_v1.BankApp_v1.controllers;

import com.my_bank_v1.BankApp_v1.models.employees;
import com.my_bank_v1.BankApp_v1.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/employ_login")
    public String showLoginForm(Model model) {
        model.addAttribute("employee", new employees());
        return "employ_login";
    }

    @PostMapping("/employ_login")
    public String login(@ModelAttribute("employee") employees employee, Model model) {
        if (employeeService.isEmployeePasswordValid(employee.getEmployeeEmail(), employee.getEmployeePassword())) {
            // Redirect to the employee dashboard
            return "redirect:/employ_dashboard";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "employ_login";
        }
    }
}