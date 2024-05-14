/*
 * this controler is made for add security and user authentication to aplication
 * this will provide way to access full application
 * 
 * careted by : prince patel
 * 
 */

package com.example.overses_consultancy_12_2_2024.controlers;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.overses_consultancy_12_2_2024.constants.Roles;
import com.example.overses_consultancy_12_2_2024.models.User;
import com.example.overses_consultancy_12_2_2024.repos.UserRepository;
import com.example.overses_consultancy_12_2_2024.services.ImageUploadServices;

@Controller
public class AuthControler {

    @Autowired
    UserRepository userRepository;

    @Autowired
    PasswordEncoder passwordEncoder;

    // this rout will redirect to login page
    @GetMapping("/login")
    public String login() {

        return "login";

    }

    // this route will redirect to register options page
    @GetMapping("/register")
    public String registerOptions() {

        return "registerOptions";

    }

    // this route will redirect to register as cunsoltent page
    @GetMapping("/register/cunsoltent")
    public String cunsoltentRegisterPage() {

        return "cunsoltentRegister";

    }

    // this route will redirect to register as student page
    @GetMapping("/register/student")
    public String studentRegisterPage() {

        return "studentRegister";

    }

    // post requests

    // this route will split register user acording to their chooices
    @PostMapping("/register")
    public String redirectAcording(HttpServletRequest request) {

        try {

            String role = request.getParameter("role");
            if (role.charAt(0) == 'c') {
                return "redirect:/register/cunsoltent";
            } else if (role.charAt(0) == 's') {
                return "redirect:/register/student";
            }
            return "redirect:/register";

        } catch (Exception e) {

            System.out.println("ok");
            return "redirect:/";

        }

    }

    // this route will register cunsoltent
    @PostMapping("/register/cunsoltent")
    public String registerCunsoltent(@ModelAttribute User user, @RequestParam("image") MultipartFile file) {

        try {

            Path fileNameAndPath = ImageUploadServices.uploadImage(file);
            List<String> roles = new ArrayList<>();
            roles.add(Roles.cunsoltent);
            user.setProfile(fileNameAndPath.toString());
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            user.setRoles(roles);
            userRepository.save(user);

        } catch (Exception e) {

            System.out.println(e);

        }

        return "redirect:/login";

    }

    // this route will register student
    @PostMapping("/register/student")
    public String registerStudent(@ModelAttribute User user, @RequestParam("image") MultipartFile file) {

        try {

            Path fileNameAndPath = ImageUploadServices.uploadImage(file);
            List<String> roles = new ArrayList<>();
            roles.add(Roles.student);
            user.setProfile(fileNameAndPath.toString());
            user.setSpecification("Student");
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            user.setRoles(roles);
            userRepository.save(user);

        } catch (Exception e) {

            System.out.println(e);

        }
        return "redirect:/login";

    }

}
