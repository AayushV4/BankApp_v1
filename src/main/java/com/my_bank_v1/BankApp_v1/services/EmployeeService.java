package com.my_bank_v1.BankApp_v1.services;

import com.my_bank_v1.BankApp_v1.models.employees;
import com.my_bank_v1.BankApp_v1.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    @Autowired
    private PasswordEncoder bCryptPasswordEncoder;

    public employees findByEmployeeEmail(String employeeEmail) {
        return employeeRepository.findByEmployeeEmail(employeeEmail);
    }

    public boolean isEmployeePasswordValid(String employeeEmail, String employeePassword) {
        employees employee = findByEmployeeEmail(employeeEmail);
        if (employee == null) {
            return false;
        }
        return bCryptPasswordEncoder.matches(employeePassword, employee.getEmployeePassword());
    }
}