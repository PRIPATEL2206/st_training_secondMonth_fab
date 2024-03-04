package com.jaybhensdadia.hrms.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jaybhensdadia.hrms.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);
}