package com.my_bank_v1.BankApp_v1.config;

import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

public class MailConfig {
    @Bean
    public static JavaMailSenderImpl getMailConfig(){
        JavaMailSenderImpl emailConfig = new JavaMailSenderImpl();

        //set properties:
        Properties props = emailConfig.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.debug", "true");

        //set mail credentials
        emailConfig.setHost("mail.smtp2go.com");
        emailConfig.setPort(2525);
        emailConfig.setUsername("no-reply@mybank.com");
        emailConfig.setPassword("bVh4RM6SR0DTnXg4");

        return emailConfig;
    }

}
