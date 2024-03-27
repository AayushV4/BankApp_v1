package com.my_bank_v1.BankApp_v1.repository;

import com.my_bank_v1.BankApp_v1.models.employees;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface EmployeeRepository extends CrudRepository<employees, Integer> {

    @Query(value = "SELECT Employee_Email FROM employees WHERE Employee_Email = :email", nativeQuery = true)
    String getEmployeeEmail(@Param("email") String email);

    @Query(value = "SELECT Employee_Pass FROM employees WHERE Employee_Email = :email", nativeQuery = true)
    String getEmployeePassword(@Param("email") String email);


}
