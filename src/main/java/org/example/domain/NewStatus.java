package org.example.domain;

import javax.persistence.*;

@Entity
@Table(name = "statuses")
public class NewStatus {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String status;

    @ManyToOne
    @JoinColumn(name = "user_id")
    User user;

    public NewStatus() {
    }

    public NewStatus(String status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
