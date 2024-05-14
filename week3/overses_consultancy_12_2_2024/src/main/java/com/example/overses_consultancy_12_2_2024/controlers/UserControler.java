/*
 * careted by : prince patel
 * 
 * this controler will control the flow of applicaion
 * 
 */

package com.example.overses_consultancy_12_2_2024.controlers;

import java.io.IOException;
import java.nio.file.Path;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.overses_consultancy_12_2_2024.constants.Roles;
import com.example.overses_consultancy_12_2_2024.models.Appointment;
import com.example.overses_consultancy_12_2_2024.models.User;
import com.example.overses_consultancy_12_2_2024.repos.ApointmentRepo;
import com.example.overses_consultancy_12_2_2024.repos.UserRepository;
import com.example.overses_consultancy_12_2_2024.services.ImageUploadServices;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class UserControler {
    @Autowired
    UserRepository userRepository;

    @Autowired
    ApointmentRepo apointmentRepo;

    @Autowired
    PasswordEncoder passwordEncoder;

    // Home route that will redirect according to user authentication
    @GetMapping("/")
    public String userRedirect(Principal principal) {

        try {

            // Fetching the user details
            User user = userRepository.findByUsername(principal.getName()).orElseThrow();

            // If user is a consultant, redirect to consultant page
            if (user.getRoles().contains(Roles.cunsoltent)) {
                return "redirect:/cunsoltent/" + user.getId();
            }

            // Else, redirect to student page
            return "redirect:/student/" + user.getId();
        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }

    }

    // If user is a student, they will be redirected to this route
    @GetMapping("/student/{id}")
    public String studentDashBord(@PathVariable("id") Long studentId, Model model) {

        try {

            // Fetching consultants list and appointments of the student
            List<User> consoltents = new ArrayList<>();
            List<User> allUser = userRepository.findAll();
            List<Appointment> appointments = this.getApoitmentsOfStudent(studentId);
            for (User user : allUser) {
                if (user.getRoles().contains(Roles.cunsoltent)) {
                    consoltents.add(user);
                }
            }
            model.addAttribute("consoltents", consoltents);
            model.addAttribute("appointments", appointments);
            return "studentDashBord";

        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }

    }

    // Consultant dashboard route
    @GetMapping("/cunsoltent/{id}")
    public String cunsoltentDashBord(@PathVariable("id") Long cunsoltentId, Model model) {
        try {
            List<Appointment> appointments = this.getApoitmentsOfcunsoltent(cunsoltentId);
            System.out.println(appointments);
            model.addAttribute("appointments", appointments);
            return "cunsoltentDashBord";
        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }

    }

    // Route to approve an appointment
    @GetMapping("/approve/{id}")
    public String aprove(@PathVariable("id") Long apointmentId) {

        try {

            Appointment appointment = apointmentRepo.getReferenceById(apointmentId);
            appointment.setStatus("aprove");
            apointmentRepo.save(appointment);
            return "redirect:/";
        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }

    }

    // Route to decline an appointment
    @GetMapping("/decline/{id}")
    public String decline(@PathVariable("id") Long apointmentId) {

        try {
            Appointment appointment = apointmentRepo.getReferenceById(apointmentId);
            appointment.setStatus("decline");
            apointmentRepo.save(appointment);
            return "redirect:/";

        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }

    }

    // Route to display update user page
    @GetMapping("/updateUser")
    public String updatePageUrl(Principal principal) {
        try {
            Long id = userRepository.findByUsername(principal.getName()).orElseThrow().getId();
            return "redirect:/updateUser/" + id;
        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }

    }

    // Route to display and handle user update
    @GetMapping("/updateUser/{id}")
    public String updateUserPage(@PathVariable Long id, Model model) {

        try {
            User user = userRepository.getReferenceById(id);
            model.addAttribute("user", user);
            return "updateUser";
        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }
    }

    // Route to update user details
    @PostMapping("/updateUser/{id}")
    public String updateUser(@ModelAttribute User updatedUser, @PathVariable Long id,
            @RequestParam("image") MultipartFile file) throws IOException {
        try {
            User user = userRepository.getReferenceById(id);
            user.setEmail(updatedUser.getEmail());
            user.setSpecification(updatedUser.getSpecification());
            System.out.println("profile : " + updatedUser.getProfile());
            if (updatedUser.getProfile() != null && !user.getProfile().equals(updatedUser.getProfile())) {

                Path fileNameAndPath = ImageUploadServices.uploadImage(file);
                user.setProfile(fileNameAndPath.toString());

            }
            userRepository.save(user);
            return "redirect:/updateUser/" + user.getId();
        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }

    }

    // Route to handle password change
    @GetMapping("user/changePassword/{id}")
    public String changePasswordPage(@PathVariable Long id, Model model) {
        try {
            model.addAttribute("id", id);
            return "changePassword";

        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }
    }

    @PostMapping("user/changePassword/{id}")
    public String changePassword(HttpServletRequest request, @PathVariable Long id) {
        try {
            User user = userRepository.getReferenceById(id);
            String oldPass = request.getParameter("oldPassword");
            String newPass = request.getParameter("newPassword");
            System.out.println(oldPass);
            // System.out.println(user.getPassword());
            System.out.println(passwordEncoder.encode(oldPass).equals(user.getPassword()));
            if (passwordEncoder.encode(oldPass).equals(user.getPassword())) {
                user.setPassword(passwordEncoder.encode(newPass));
                return "redirect:/";
            }
            return "redirect:/user/changePassword/{id}";
        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }

    }

    // Method to get appointments of a consultant
    public List<Appointment> getApoitmentsOfcunsoltent(Long cunsId) {
        List<Appointment> userApoitments = new ArrayList<>();
        try {
            apointmentRepo.findAll().forEach(apoitment -> {
                System.out.println(apoitment.getStatus().equals("decline"));
                if (apoitment.getConsultantId() == cunsId && !apoitment.getStatus().equals("decline")) {
                    userApoitments.add(apoitment);
                }
            });
        } catch (Exception e) {
            System.out.println(e);
        }
        return userApoitments;

    }

    // Method to get appointments of a student
    public List<Appointment> getApoitmentsOfStudent(Long stid) {

        List<Appointment> userApoitments = new ArrayList<>();
        try {
            apointmentRepo.findAll().forEach(apoitment -> {
                if (apoitment.getStudentId() == stid) {

                    userApoitments.add(apoitment);

                }
            });
        } catch (Exception e) {
            System.out.println(e);
        }
        return userApoitments;

    }

}
