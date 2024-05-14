/*
 * this is controler for makeing apointment with cunsoltent by student
 * 
 * careted by : prince patel
 * 
 */

package com.example.overses_consultancy_12_2_2024.controlers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.overses_consultancy_12_2_2024.models.Appointment;
import com.example.overses_consultancy_12_2_2024.repos.ApointmentRepo;
import com.example.overses_consultancy_12_2_2024.repos.UserRepository;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ApointmentControler {

    @Autowired
    UserRepository userRepository;

    @Autowired
    ApointmentRepo apointmentRepo;

    // this is route for display booking apointment page
    @GetMapping("/student/bookApointment/{id}")
    public String bookApoinmentPage(@PathVariable("id") Long consoltentId, Principal principal, Model model) {

        try {

            Long studentId = (userRepository.findByUsername(principal.getName()).orElseThrow(null)).getId();
            model.addAttribute("studentId", studentId);
            model.addAttribute("consoltentId", consoltentId);
            return "bookApointment";

        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";
        }

    }

    // this is post route that will book apintment
    @PostMapping("/student/bookApointment/")
    public String bookApointment(HttpServletRequest request) {
        try {

            Appointment appointment = new Appointment();
            appointment.setDescription("ok");
            appointment.setStatus("pending");
            appointment.setStartTime(request.getParameter("startTime"));
            appointment.setEndTime(request.getParameter("endTime"));
            appointment.setDescription(request.getParameter("description"));
            appointment.setConsultantId(Long.parseLong(request.getParameter("consultantId")));
            appointment.setStudentId(Long.parseLong(request.getParameter("studentId")));
            appointment.setCreatedOn(appointment.getStartTime());
            appointment.setModifiedOn(appointment.getStartTime());
            apointmentRepo.save(appointment);
            return "redirect:/";

        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/";

        }
    }

}