package com.my_bank_v1.BankApp_v1.controller_advisor;

import com.my_bank_v1.BankApp_v1.models.User;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class AdvisorController {

    @ModelAttribute("registerUser")
    public User getUserDefaults(){
        return new User();
    }

}



