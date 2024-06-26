package com.example.overses_consultancy_12_2_2024.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "Apointments")
public class Appointment {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    String createdOn;
    String modifiedOn;
    String description;
    String status;
    String startTime;
    String endTime;
    Long consultantId;
    Long studentId;
}
