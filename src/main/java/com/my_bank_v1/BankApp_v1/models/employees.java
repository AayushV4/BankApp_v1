package com.my_bank_v1.BankApp_v1.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
public class employees {

    @Id
    private int employeeId;

    @NotEmpty(message = "The password field cannot be empty")
    private String Employee_Pass;

    @Email
    @NotEmpty
    @Pattern(regexp = "([a-zA-Z0-9]+(?:[._+-][a-zA-Z0-9]+)*)@([a-zA-Z0-9]+(?:[._][a-zA-Z0-9]+)*[.][a-zA-Z]{2,})")
    private String Employee_Email;

    @NotNull
    private int roleId;

    private LocalDate created_at;
    private LocalDateTime updated_at;

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeePassword() {
        return Employee_Pass;
    }

    public void setEmployeePassword(String employeePassword) {
        this.Employee_Pass = employeePassword;
    }

    public String getEmployeeEmail() {
        return Employee_Email;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.Employee_Email = employeeEmail;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public LocalDate getCreated_at() {
        return created_at;
    }

    public void setCreated_at(LocalDate created_at) {
        this.created_at = created_at;
    }

    public LocalDateTime getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(LocalDateTime updated_at) {
        this.updated_at = updated_at;
    }
}
