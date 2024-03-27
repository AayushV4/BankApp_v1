package com.my_bank_v1.BankApp_v1.controllers;

import com.my_bank_v1.BankApp_v1.helpers.Token;
import com.my_bank_v1.BankApp_v1.repository.EmployeeRepository;
import com.my_bank_v1.BankApp_v1.models.employees;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeRepository employeeRepository;

    @GetMapping("/employ_login")
    public String showLoginForm(Model model) {
        model.addAttribute("employee", new employees());
        model.addAttribute("token", Token.generateToken());
        model.addAttribute("PageTitle", "employ_login");
        return "employ_login";
    }

    @PostMapping("/employ_login")
    public String employ_login(@RequestParam("email")String email,
                        @RequestParam("password") String password,
                        @RequestParam("_token")String token,
                        Model model,
                        HttpSession session){

        // TODO: VALIDATE INPUT FIELDS / FORM DATA:
        if(email.isEmpty() || email == null || password.isEmpty() || password == null){
            model.addAttribute("error", "Username or Password Cannot be Empty");
            return "/employ_login";
        }
        // TODO: CHECK IF EMAIL EXISTS:
        String getEmailInDatabase = employeeRepository.getEmployeeEmail(email);

        // Check If Email Exists:
        if(getEmailInDatabase != null ){
            // Get Password In Database:
            String getPasswordInDatabase = employeeRepository.getEmployeePassword(getEmailInDatabase);

            // Validate Password:
            if(!BCrypt.checkpw(password, getPasswordInDatabase)){
                model.addAttribute("error", "Incorrect Username or Password");
                return "login";
            }
            // End Of Validate Password.
        }else{
            model.addAttribute("error", "Something went wrong please contact support");
            return "error";
        }

        return "redirect:/employee";

    }





    }
    // End Of Authentication Method.




