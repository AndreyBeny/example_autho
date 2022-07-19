package org.example.controller;

import org.example.domain.NewStatus;
import org.example.domain.User;
import org.example.repos.StatusRepo;
import org.example.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class StatusController {

    @Autowired
    StatusRepo statusRepo;

    @Autowired
    UserRepo userRepo;

    @GetMapping("status")
    public String inputStatus(){
        return "status";
    }

    @PostMapping("myProfile")
    public String status(Authentication authentication, Model model) {
        User user = userRepo.findByLogin(authentication.getName());
        NewStatus status = statusRepo.findByUserId(user.getId());
        model.addAttribute("status", status.getStatus());
        return "myProfile";
    }


    @PostMapping("status")
    public String addStatus(@RequestParam String status, NewStatus newStatus, Authentication authentication) {
        User user = userRepo.findByLogin(authentication.getName());
        newStatus.setUser(user);
        NewStatus deleteStatus = statusRepo.findByUserId(user.getId());
        if (deleteStatus != null) {
            statusRepo.delete(deleteStatus);
        }
        newStatus.setStatus(status);
        statusRepo.save(newStatus);
        return "redirect:myProfile";
    }
}
