/*
 * this configure file is for configuring user of aplication and add security for application
 * 
 * careted by : prince patel
 * 
 */

package com.example.overses_consultancy_12_2_2024.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.example.overses_consultancy_12_2_2024.services.CustomUserDetailsService;

@Configuration
@EnableWebSecurity
public class CustomSessionConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        // for access aprove,decline,cunsoltent routes need to be role CUNSOLRENT
        // for route student it has to be role student
        http.csrf(csrf -> csrf.disable())
                .authorizeHttpRequests(request -> request.requestMatchers("/").authenticated()
                        .requestMatchers("/approve/**", "/decline/**", "/cunsoltent/**").hasAnyRole("CUNSOLTENT")
                        .requestMatchers("/student/**").hasAnyRole("STUDENT")
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