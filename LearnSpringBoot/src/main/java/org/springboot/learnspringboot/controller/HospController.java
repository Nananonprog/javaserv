package org.springboot.learnspringboot.controller;

import org.springboot.learnspringboot.model.Hospital;
import org.springboot.learnspringboot.model.NewUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HospController {

    @GetMapping("hospital")
    public String hospital(Model m) {
        Hospital admin = new Hospital("Узенов В.Г.", "Врач", "uzenov@gmail.com", "+79994325617");
        Hospital doctor = new Hospital("Павлов И.И.", "Пациент", "pavlov@gmail.com", "+79991891723");
        Hospital patient = new Hospital("Масляков В.Д.", "Пациент", "masl@gmail.com", "+79993547893");
        Hospital patient2 = new Hospital("Егоров А.В.", "Пациент", "masl@gmail.com", "+79993547893");

        List<Hospital> med = new ArrayList<Hospital>();
        med.add(admin);
        med.add(doctor);
        med.add(patient);
        med.add(patient2);
        m.addAttribute("med", med);
        return "hospital";
    }

    @GetMapping("hosp_reg")
    public String hospitalRegPage(Model m) {
            Hospital doc = new Hospital();
        m.addAttribute("doc", doc);
        return "hosp_reg";
    }

    @PostMapping("hosp_reg/hosp_save")
    public String registerHospitalUser(@ModelAttribute("doc") Hospital doc, Model model) {
        model.addAttribute("doc", doc);
        return "hosp_save";
    }
    @GetMapping("pat")
    public String patientRegPage(Model m) {
            NewUser newU = new NewUser();
        m.addAttribute("newU", newU);
        return "pat";
    }

    @PostMapping("pat/pat_save")
    public String registerPatient(@ModelAttribute("newU") NewUser newU, Model model) {
        model.addAttribute("newU", newU);
        return "pat_save";
    }



}
