package com.jaybhensdadia.hrms.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.jaybhensdadia.hrms.services.CustomUserDetailsService;

@Configuration
@EnableWebSecurity
public class CustomSessionConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.csrf(csrf -> csrf.disable())
                .authorizeHttpRequests(request -> request
                        .requestMatchers("/").authenticated()
                        .requestMatchers(
                                "/employee-form",
                                "/personal-form",
                                "/contact-form",
                                "/family-form",
                                "/emergency-form",
                                "/nominee-form",
                                "/health-form",
                                "/photo-form",
                                "/attach-form",
                                "/allowance-form",
                                "/job-form",
                                "/reportingOfficer-form",
                                "/salary-form",
                                "/previousEmployment-form",
                                "/show-qualiForm",
                                "/test-form",
                                "/employee/add")
                        .hasAnyRole("ADMIN")
                        .requestMatchers("eployeeDashBoard").hasAnyRole("USER")
                        .anyRequest().permitAll())
                .formLogin(t -> {
                    t.loginPage("/login").permitAll();
                    t.successHandler((request, response, authentication) -> {
                        response.sendRedirect("/");
                    });
                });
        return http.build();

    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public UserDetailsService getUserDetailsService() {
        return new CustomUserDetailsService();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider daoAuthenticationProvider = new DaoAuthenticationProvider();
        daoAuthenticationProvider.setUserDetailsService(getUserDetailsService());
        daoAuthenticationProvider.setPasswordEncoder(passwordEncoder());
        return daoAuthenticationProvider;
    }

}