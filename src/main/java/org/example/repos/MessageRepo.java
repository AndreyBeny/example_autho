package org.example.repos;

import org.example.domain.Messages;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepo extends CrudRepository<Messages, Long> {

    Messages findUserMessageByFromUserAndToUser(String fromUser, String toUser);
    Messages findByUserId(Long userId);

}
