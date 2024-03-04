package com.jaybhensdadia.hrms.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Entity
@Data
@Table(name = "tbl_address")
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long addressId;

    @NotBlank
    private String addressType;

    @NotBlank
    private String address;

    @NotBlank
    private String country;

    @NotBlank
    private String state;

    @NotBlank
    private String district;

    @NotBlank
    private String city;

    @NotBlank
    private Integer pincode;

    @NotBlank
    private String ownerShip;

    private Boolean allAddressAreSame;
}
