package org.example.controller;

import org.example.domain.NewStatus;
import org.example.domain.User;
import org.example.repos.StatusRepo;
import org.example.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.util.Collections;


import static org.example.domain.Roles.USER;

@Controller()
@RequestMapping("/")
public class RegistrationController {

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private StatusRepo statusRepo;

    @GetMapping("registration")
    public String registration() {
        return "registration";
    }

    @GetMapping("test")
    public String test(){
        return "test";
    }


    @PostMapping("registration")
    public String addUser(User user, @RequestParam(value = "login") String login,
                          @RequestParam(value = "passwordTwo") String passwordTwo,
                          @RequestParam(value = "password") String password, @RequestParam(value = "email") String email,
                          @RequestParam(value = "userName") String userName, @RequestParam(value = "lastName") String lastName,
                          @RequestParam(value = "phone") String phone, @RequestParam(value = "theDate") Date theDate,
                          @RequestParam(value = "search") String search, @RequestParam(value = "country") String country,
                          @RequestParam(value = "city") String city, @RequestParam(value = "maritalStatus") String maritalStatus,
                          @RequestParam(value = "children") String children, @RequestParam(value = "gender") String gender) {

        user.setLogin(login);
        user.setPassword(password);
        user.setEmail(email);
        user.setUserName(userName);
        user.setLastName(lastName);
        user.setPhone(phone);
        user.setTheDate(theDate);
        user.setSearch(search);
        user.setCountry(country);
        user.setCity(city);
        user.setMaritalStatus(maritalStatus);
        user.setChildren(children);
        user.setGender(gender);
        user.setPasswordTwo(passwordTwo);
        user.setRole(Collections.singleton(USER));
        user.setActive(true);
        userRepo.save(user);

        NewStatus status = new NewStatus();
        status.setStatus("Добавить статус");
        status.setUser(user);
        statusRepo.save(status);

        return "redirect:login";
    }
}
