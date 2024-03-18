package com.my_bank_v1.BankApp_v1.repositories;

import com.my_bank_v1.BankApp_v1.models.employees;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<employees, Long> {

    employees findByEmployeeEmail(String employeeEmail);
}