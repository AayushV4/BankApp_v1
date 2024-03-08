package com.my_bank_v1.BankApp_v1.helpers;

public class HTML {

    public static String htmlEmailTemplate(String token, int code){

        // Verify Account
        String url = "http://127.0.0.1:8070/verify?token=" + token + "&code=" + code;

        String emailtemplate = "<!DOCTYPE html>\n" +
                "<html lang='en'>\n" +
                "    <head>\n" +
                "        <meta charset='UTF-8'>\n" +
                "        <meta http-equiv='X-UA-Compatible' content='IE-edge'>\n" +
                "        <meta name='viewport' content='width-device-width, initial-scale-1.0'>\n" +
                "        <link rel='stylesheet' href='css/email.css'>\n" +
                "        <title>Document</title>\n" +
                "        <style>\n" +
                "            *{\n" +
                "                box-sizing: border-box;\n" +
                "                font-family: Comfortaa;\n" +
                "            }\n" +
                "\n" +
                "            body{\n" +
                "                height: 100vh;\n" +
                "                background-color: rgb(212, 222, 230);\n" +
                "                display: flex;\n" +
                "                align-items: center;\n" +
                "                justify-content: center;\n" +
                "            }\n" +
                "\n" +
                "            .wrapper{\n" +
                "                width: 550px;\n" +
                "                height: auto;\n" +
                "                padding: 15px;\n" +
                "                background-color: white;\n" +
                "                border-radius: 7px;\n" +
                "            }\n" +
                "\n" +
                "            .email-msg-header{\n" +
                "                text-align: center;\n" +
                "            }\n" +
                "\n" +
                "            .company-name{\n" +
                "                width: 100%;\n" +
                "                font-size: 35px;\n" +
                "                color: gray;\n" +
                "                text-align: center;\n" +
                "            }\n" +
                "\n" +
                "            .welcome-text{\n" +
                "                text-align: center;\n" +
                "            }\n" +
                "\n" +
                "            .verify-account-btn{\n" +
                "                padding: 15px;\n" +
                "                background-color: rgb(0, 100, 252);\n" +
                "                text-decoration: none;\n" +
                "                color: white;\n" +
                "                border-radius: 5px;\n" +
                "\n" +
                "            }\n" +
                "\n" +
                "        </style>\n" +
                "    </head>\n" +
                "    <body>\n" +
                "\n" +
                "        <div class='wrapper'>\n" +
                "            <h2 class='email-msg-header'>\n" +
                "                Welcome and Thank You for Choosing\n" +
                "            </h2>\n" +
                "\n" +
                "            <div class='company-name'>MyBank</div>\n" +
                "            <hr>\n" +
                "            <p class='welcome-text'>\n" +
                "                Your account has been successfully registered, please click below to verify your account\n" +
                "            </p>\n" +
                "            <br>\n" +
                "            <br>\n" +
                "\n" +
                "            <center> <a href='"+ url +"' class='verify-account-btn' role='button'>Verify Account</a></center>\n" +
                "        </div>\n" +
                "    </body>\n" +
                "</html>";
        return emailtemplate;

    }

}
