package com.jaybhensdadia.hrms.entities;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@Table(name = "tbl_designation")
public class Designation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long designationId;


    @NotBlank(message = "Designation cannot be empty")
    private String designationName;

    @OneToOne(mappedBy = "employeeDesignation")
    private Employee employee;
}
