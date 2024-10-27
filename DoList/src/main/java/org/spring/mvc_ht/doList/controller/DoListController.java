package org.spring.mvc_ht.doList.controller;

import jakarta.servlet.http.HttpSession;
import org.spring.mvc_ht.doList.entity.DoList;
import org.spring.mvc_ht.doList.service.DoListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class DoListController {
    @Autowired
    private DoListService doListService;

    @RequestMapping("/home")
    public String home(HttpSession session) {
        List<DoList> doLists = doListService.findAll();
        session.setAttribute("doLists", doLists);
        return "home";
    }
    @RequestMapping("/new")
    public String showDoList(Map<String, Object> model) {
        DoList doList = new DoList();
        model.put("doList", doList);
        return "new_doList";
    }
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveDoList(@ModelAttribute("doList") DoList doList, HttpSession session) {
        doListService.save(doList);
        session.setAttribute("msg", "Новый пункт добавлен");
        return "redirect:/home";
    }
    @RequestMapping("/edit/{id}")
    public String showNewDoList(@PathVariable("id") int id, Model m){
        DoList doList = doListService.getDoListById(id);
        m.addAttribute("editDoList", doList);
        return "edit_doList";


    }
    @RequestMapping(value = "/updateDoList", method = RequestMethod.POST)
    public String updateDoList(@ModelAttribute("editDoList") DoList doList, @RequestParam("id") long id, HttpSession session){
        doListService.update(doList, id);
        session.setAttribute("msg", "Лист успешно обновлен");
        return "redirect:/home";
    }

    @RequestMapping("/delete/{id}")
    public String deleteDoList(@PathVariable("id") long id, HttpSession session){
        doListService.deleteDoListById(id);
        session.setAttribute("msg", "Запись успешно удалена");
        return "redirect:/home";
    }

    }


