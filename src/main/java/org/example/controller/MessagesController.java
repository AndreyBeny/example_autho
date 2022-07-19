package org.example.controller;

import com.mysql.cj.protocol.Message;
import org.example.domain.Messages;
import org.example.domain.User;
import org.example.repos.MessageRepo;
import org.example.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Controller
@RequestMapping("/")
public class MessagesController {
    @Autowired
    UserRepo userRepo;

    @Autowired
    MessageRepo messageRepo;

    private String userLogin;

    @GetMapping("message")
    public String message(@RequestParam String login, Authentication authentication, Model model) {
        userLogin = login;
        User iAm = userRepo.findByLogin(authentication.getName());
        model.addAttribute("my", iAm.getLogin());
        model.addAttribute("myName", iAm.getUserName());
        User user = userRepo.findByLogin(userLogin);
        model.addAttribute("u", user.getLogin());
        model.addAttribute("uName", user.getUserName());
        String uName = user.getLogin();
        model.addAttribute("uName", user.getUserName());
        List<Messages> mes = (List<Messages>) messageRepo.findAll();
        List<Messages> m = mes.stream().filter(a -> a.getFromUser().equals(iAm.getLogin()) && a.getToUser()
                .equals(user.getLogin()) || a.getFromUser().equals(user.getLogin()) && a.getToUser()
                .equals(iAm.getLogin())).collect(Collectors.toList());

        model.addAttribute("mes", m);
        return "message";
    }


    @PostMapping("message")
    public String message(@RequestParam String message, Authentication authentication) {
        User user = userRepo.findByLogin(userLogin);
        User iAm = userRepo.findByLogin(authentication.getName());
        Messages mes = new Messages();
        mes.setUserMessage(message);
        mes.setUser(iAm);
        mes.setTime(LocalDateTime.now());
        mes.setFromUser(iAm.getLogin());
        mes.setToUser(user.getLogin());
        mes.setSumId(user.getId() + iAm.getId());
        messageRepo.save(mes);
        String log = user.getLogin();
        return "redirect:message?login=" + log;
    }



}
