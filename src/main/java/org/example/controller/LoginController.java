package org.example.controller;

import org.example.domain.Messages;
import org.example.domain.NewStatus;
import org.example.domain.User;
import org.example.repos.MessageRepo;
import org.example.repos.StatusRepo;
import org.example.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/")
public class LoginController {


    @Autowired
    UserRepo userRepo;

    @Autowired
    StatusRepo statusRepo;

    @Autowired
    MessageRepo messageRepo;

    @GetMapping("login")
    public String login(){
        return "login";
    }




    @GetMapping("delete")
    public String delete(Authentication authentication){
        User user = userRepo.findByLogin(authentication.getName());
        NewStatus status = statusRepo.findByUserId(user.getId());
        Messages messages = messageRepo.findByUserId(user.getId());
        statusRepo.delete(status);
        messageRepo.delete(messages);
        userRepo.delete(user);
        return "delete";
    }

    @GetMapping("myProfile")
    public String myProfile(Model model, Authentication authentication) {
        User user = userRepo.findByLogin(authentication.getName());

        model.addAttribute("userName", user.getUserName());
        model.addAttribute("lastName", user.getLastName());
        model.addAttribute("children", user.getChildren());
        model.addAttribute("city", user.getCity());
        model.addAttribute("country", user.getCountry());
        model.addAttribute("id", user.getId());
        model.addAttribute("login", user.getLogin());
        model.addAttribute("maritalStatus", user.getMaritalStatus());
        model.addAttribute("phone", user.getPhone());
        model.addAttribute("search", user.getSearch());
        model.addAttribute("theDate", user.getTheDate());
        model.addAttribute("gender", user.getGender());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("active", user.getActive());

        NewStatus status = statusRepo.findByUserId(user.getId());
        model.addAttribute("status", status.getStatus());
        String s = "Добавить статус";
        model.addAttribute("s", s);

        int age;
        if(user.getTheDate().toLocalDate().getMonthValue() > LocalDateTime.now().getMonthValue()) {
            age = LocalDateTime.now().getYear() - user.getTheDate().toLocalDate().getYear() - 1;
        }else {
            age = LocalDateTime.now().getYear() - user.getTheDate().toLocalDate().getYear();
        }
        model.addAttribute("age", age);
        return "myProfile";
    }
}
