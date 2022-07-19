package org.example.controller;

import org.example.domain.Messages;
import org.example.domain.User;
import org.example.repos.MessageRepo;
import org.example.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/")
public class MyMessagesController {

    @Autowired
    private MessageRepo messageRepo;

    @Autowired
    private UserRepo userRepo;

    @GetMapping("myMessages")
    public String myMessages(Authentication authentication, Model model){
        User iAm = userRepo.findByLogin(authentication.getName());
        String myLogin = iAm.getLogin();
        model.addAttribute("myLogin", myLogin);
        model.addAttribute("login", iAm.getLogin());
        List<Messages> messages = (List<Messages>) messageRepo.findAll();
        List<Messages> m = messages.stream().filter(a -> a.getFromUser().equals(iAm.getLogin())
                || a.getToUser().equals(iAm.getLogin())).collect(Collectors.toList());
        model.addAttribute("message", m);
        return "myMessages";
    }
}
