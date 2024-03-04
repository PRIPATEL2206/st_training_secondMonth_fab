package com.jaybhensdadia.hrms.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jaybhensdadia.hrms.constants.Roles;
import com.jaybhensdadia.hrms.entities.Employee;
import com.jaybhensdadia.hrms.entities.User;
import com.jaybhensdadia.hrms.repositories.EmployeeRepo;
import com.jaybhensdadia.hrms.repositories.UserRepository;

@Controller
public class HomeController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    EmployeeRepo employeeRepo;

    @GetMapping("/")
    public String home(Principal principal) {
        User user = userRepository.findByEmail(principal.getName()).orElseThrow();
        if (user.getRoles().contains(Roles.USER)) {
            return "redirect:/eployeeDashBoard";
        }
        return "home";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/employee-form")
    public String employeeForm(Model model) {
        model.addAttribute("form", "employee");
        return "home";
    }

    @GetMapping("/personal-form")
    public String personalForm(Model model) {
        model.addAttribute("form", "personal");
        return "home";
    }

    @GetMapping("/contact-form")
    public String contactForm(Model model) {
        model.addAttribute("form", "contact");
        return "home";
    }

    @GetMapping("/family-form")
    public String familyForm(Model model) {
        model.addAttribute("form", "family");
        return "home";
    }

    @GetMapping("/emergency-form")
    public String emergencyForm(Model model) {
        model.addAttribute("form", "emergency");
        return "home";
    }

    @GetMapping("/nominee-form")
    public String nomineeForm(Model model) {
        model.addAttribute("form", "nominee");
        return "home";
    }

    @GetMapping("/health-form")
    public String healthForm(Model model) {
        model.addAttribute("form", "health");
        return "home";
    }

    @GetMapping("/photo-form")
    public String photoForm(Model model) {
        model.addAttribute("form", "photo");
        return "home";
    }

    @GetMapping("/attach-form")
    public String attachForm(Model model) {
        model.addAttribute("form", "attach");
        return "home";
    }

    // Employment
    @GetMapping("/allowance-form")
    public String allowanceForm(Model model) {
        model.addAttribute("form", "allowanceDeclaration");
        return "home";
    }

    @GetMapping("/job-form")
    public String jobForm(Model model) {
        model.addAttribute("form", "job");
        return "home";
    }

    @GetMapping("/reportingOfficer-form")
    public String reportingOfficerForm(Model model) {
        model.addAttribute("form", "reportingOfficer");
        return "home";
    }

    @GetMapping("/salary-form")
    public String salaryForm(Model model) {
        model.addAttribute("form", "salary");
        return "home";
    }

    @GetMapping("/previousEmployment-form")
    public String previousEmploymentForm(Model model) {
        model.addAttribute("form", "previousEmployment");
        return "home";
    }

    @GetMapping("/show-qualiForm")
    public String qualiForm(Model model) {
        model.addAttribute("form", "quali");
        return "home";
    }

    @GetMapping("/test-form")
    public String testForm(Model model) {
        model.addAttribute("form", "test");
        return "home";
    }

    @PostMapping("/employee/add")
    public String addEmployee(@ModelAttribute Employee employee) {
        System.out.println("here");
        employeeRepo.save(employee);
        return "redirect:/";
    }

    @GetMapping("/eployeeDashBoard")
    public String eployeeDashBord(Model model, Principal principal) {
        User user = userRepository.findByEmail(principal.getName()).orElseThrow();
        model.addAttribute("user", user);
        return "profilePage";
    }

}
