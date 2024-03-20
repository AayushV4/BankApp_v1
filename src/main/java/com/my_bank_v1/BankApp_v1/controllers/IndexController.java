package com.my_bank_v1.BankApp_v1.controllers;

import com.my_bank_v1.BankApp_v1.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/")
    public ModelAndView getIndex(){
        ModelAndView getIndexPage = new ModelAndView("index");
        getIndexPage.addObject("PageTitle", "Home");
        System.out.println("In Index Controller");
        return getIndexPage;
    }

/**
    @GetMapping("/login")
    public ModelAndView getLogin(){
        ModelAndView getLoginPage = new ModelAndView("login");
        System.out.println("In Login Page Controller");
        getLoginPage.addObject("PageTitle","Login");
        return getLoginPage;
    }
 **/


    @GetMapping("/error")
    public ModelAndView getError(){
        ModelAndView getErrorPage = new ModelAndView("error");
        System.out.println("In Error Page Controller");
        getErrorPage.addObject("PageTitle","Errors");
        return getErrorPage;
    }

    @GetMapping("/verify")
    public ModelAndView getVerify(@RequestParam("token")String token, @RequestParam("code")String code){
        //Set View:
        ModelAndView getVerifyPage;
        //Get Token In Database
        String dbToken = userRepository.checkToken(token);

        //Check if Token is Valid:
        if(dbToken == null){
            getVerifyPage = new ModelAndView("error");
            getVerifyPage.addObject("error","This Session is Expired");
            return getVerifyPage;
        }
        //Update and Verify Account
        userRepository.verifyAccount(token, code);

        getVerifyPage = new ModelAndView("login");
        System.out.println("In Verify Account Controller");
        getVerifyPage.addObject("success","Account Verified Successfully, Please Proceed to Login");
        return getVerifyPage;
    }

    @GetMapping("/dashboard")
    public ModelAndView getDashboard(){
        ModelAndView getDashboardPage = new ModelAndView("dashboard");
        System.out.println("In Dashboard Page Controller");
        getDashboardPage.addObject("PageTitle","dashboard");
        return getDashboardPage;
    }


}
