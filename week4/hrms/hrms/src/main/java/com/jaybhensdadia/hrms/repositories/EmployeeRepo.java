package com.jaybhensdadia.hrms.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jaybhensdadia.hrms.entities.Employee;

public interface EmployeeRepo extends JpaRepository<Employee, Long> {
    
}
