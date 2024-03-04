package com.jaybhensdadia.hrms.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "tbl_license")
public class DrivingLicenseNumber {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long licenseNumber;

    private String vehicleType;

    private String validUpto;

    private String state;

    private Boolean governmentVehicleProvided;
    private Boolean governmentVehicleUsedForOnDuty;

    private String detailsOfVehicleProvided;

    private Boolean isForeigner;

    private Boolean isAnyDisciplinaryProcedding;

    private String additionalInformation;

    @OneToOne(mappedBy = "employeeDrivingLicense")
    private Employee employee;
}
