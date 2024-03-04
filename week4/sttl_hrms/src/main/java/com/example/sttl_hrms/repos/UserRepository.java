package com.example.sttl_hrms.repos;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.sttl_hrms.models.User;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);
}