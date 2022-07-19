package org.example.controller;

import org.example.domain.NewStatus;
import org.example.domain.User;
import org.example.repos.StatusRepo;
import org.example.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/")
public class SearchController {


    private Integer minAge = 0;
    private Integer maxAge = 0;
    private String country = null;
    private String city = null;
    private String gender = null;

    @Autowired
    UserRepo userRepo;

    @Autowired
    StatusRepo statusRepo;

    @GetMapping("search")
    public String search() {
        return "search";
    }

    @GetMapping("userProfile")
    public String us(@RequestParam String login, Model model){
        User user = userRepo.findByLogin(login);
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

        int age;
        if(user.getTheDate().toLocalDate().getMonthValue() > LocalDateTime.now().getMonthValue()) {
            age = LocalDateTime.now().getYear() - user.getTheDate().toLocalDate().getYear() - 1;
        }else {
            age = LocalDateTime.now().getYear() - user.getTheDate().toLocalDate().getYear();
        }
        model.addAttribute("age", age);

        NewStatus status = statusRepo.findByUserId(user.getId());
        if(status.getStatus().equals("Добавить статус")) {
            model.addAttribute("status", " ");
        } else {
            model.addAttribute("status", status.getStatus());
        }
        return "userProfile";
    }

    @PostMapping("{login}")
    public String user(){
        return "userProfile";
    }

    @GetMapping("{login}")
    public String message(){
        return "message";
    }

    @GetMapping("people")
    public String people(Model model) {
        List<User> users = (List<User>) userRepo.findAll();
        if (gender.equals("Любой")) {
            List<User> people = users.stream().filter(p -> p.getCountry().equals(country) && p.getCity().equals(city)
                    && LocalDateTime.now().getYear() - p.getTheDate().toLocalDate().getYear() >= minAge
                            && LocalDateTime.now().getYear() - p.getTheDate().toLocalDate().getYear() <= maxAge)
                    .collect(Collectors.toList());
            model.addAttribute("users", people);
        } else {
            List<User> people = users.stream().filter(p -> p.getCountry().equals(country) && p.getCity().equals(city)
                            && p.getGender().equals(gender) && LocalDateTime.now().getYear()
                            - p.getTheDate().toLocalDate().getYear() >= minAge && LocalDateTime.now().getYear()
                            - p.getTheDate().toLocalDate().getYear() + 1 <= maxAge)
                    .collect(Collectors.toList());
            model.addAttribute("users", people);
        }
        return "people";
    }

    @PostMapping("search")
    public String searching(Model model, @RequestParam Integer maxAge,
                            @RequestParam Integer minAge, @RequestParam String city, @RequestParam String country,
                            @RequestParam String gender) {
        this.country = country;
        this.city = city;
        this.maxAge = maxAge;
        this.minAge = minAge;
        this.gender = gender;

        return "redirect:people";
    }
}
