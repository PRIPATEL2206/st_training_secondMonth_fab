package com.jaybhensdadia.hrms.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "tbl_passport")
@Data
public class Passport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long passportId;

    private String dateOfExpiry;

    private String visaDetail;

}
