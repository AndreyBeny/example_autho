package org.example.repos;

import org.example.domain.User;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface UserRepo extends CrudRepository<User, Long> {


    User findByLogin(String login);



}
