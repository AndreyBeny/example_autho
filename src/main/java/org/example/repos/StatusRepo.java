package org.example.repos;

import org.example.domain.NewStatus;
import org.springframework.data.repository.CrudRepository;

public interface StatusRepo extends CrudRepository<NewStatus, Long> {
    NewStatus findByUserId(Long userId);

    NewStatus findByStatus(Long userId);
}
